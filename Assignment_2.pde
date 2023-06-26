import java.text.DecimalFormat;
import javax.swing.JOptionPane; 
int screen=0, intInUsd=0, intInSterlingPound=0, intInEuro=0, intInRinggit=0,intOutUsd=0,intOutSterlingPound=0,intOutEuro=0,intOutRinggit=0;
PImage photo;
void setup()
{
  size(590, 590);
  photo=loadImage("calculator.jpg");
  background(photo);
}

void draw()
{
  if (screen==0)
  {
    mainMenu();
  } 
  else if (screen==1)
  {
    simpleCurrencyPage();
  }
  else if(screen==2)
  {
   creditPage(); 
  }
  else if(screen==3)
  {
    instructionPage();
  }
}

void instructionPage()
{
  backButton();
  fill(0);
  rect(0, 0, 590, 400);
  fill(255, 0, 0);
  textSize(20);
  textAlign(LEFT);
  text("Step 1: After you have clicked in the currency button from\n            the home page, you will see four currency on the\n            input and the output row.", 5, 30);
  text("Step 2: Please select an input and output currency.",5,130);
  text("Step 3: After you have selected an input and output\n            currency,it will prompt user to key in the amount\n            of input currency.",5,170);
  text("Step 4: You only allow to key in a numeric value as this is a\n            currency calculator. After you have key in, please \n            click ok to see the output currency value",5,265);
}

void instructionButton()
{
  fill(0);
  rect(200, 450, 200, 80);
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  text("Instruction", 300, 500);
}

void creditButton()
{
  fill(0);
  rect(200, 350, 200, 80);
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  text("Credit Page", 300, 400);
  
}
void creditPage()
{
 photo=loadImage("calculator.jpg");
 background(photo);
 backButton(); 
 fill(0);
 rect(0, 0, 590, 480);
 fill(255,0,0);
 textSize(20);
 textAlign(CENTER);
 text("This Currency Calculator is created by\nNicholas Wah Ee Wei\nDiploma in Computer Studies\nStudent ID 0121638", 295, 20);
 textAlign(LEFT);
 text("JOptionPane - Processing Forum. (n.d.). Retrieved from \nhttps://forum.processing.org/one/topic/joptionpane.html.\nDate accessed on 1st November",5,150);
 text("JAVA OptionPane.showMessageDialog output formatting for\ndecimal. (n.d.). Retrieved from\nhttps://stackoverflow.com\n/questions/14762716/java-optionpane-\nshowmessagedialog-output-formatting-for-decimal\nDate accessed on 4th November",5,280);
}

void backButton()
{
  photo=loadImage("calculator.jpg");
  background(photo);
  
  fill(0);
  rect(25,500, 150, 80);
  
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  text("Back", 100, 550);
}

void mainMenu()
{
  photo=loadImage("calculator.jpg");
  background(photo);
  currencyButton();
  heading();
  creditButton();
  instructionButton();
}


void simpleCurrencyPage()
{
  photo=loadImage("calculator.jpg");
  background(photo);
  
  backButton();
  fill(0);
  rect(5, 5, 200, 80);//Input
  rect(5, 100, 200,80);//InputUSD
  rect(5, 200, 200, 80);//InputSterling Pound
  rect(5, 300, 200, 80);//InputEuro
  rect(5, 400, 200, 80);//InputRinggit
  
  rect(390,5,200,80);//Output
  rect(390,100,200,80);//OutputUSD
  rect(390,200,200,80);//OutputSterling Pound
  rect(390,300,200,80);//OutputEuro
  rect(390,400,200,80);//OutputRinggit
  rect(410,500,150,80);//Clear
    
  fill(0, 0, 255);
  textSize(40);
  textAlign(CENTER);
  text("Input",100,50);//Input
  text("Output",490,50);//Output
    
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  
  text("USD", 100, 150);//InputUSD
  text("Sterling Pound", 100, 250);//InputSterling Pound
  text("Euro", 100, 350);//InputEuro
  text("Ringgit", 100, 450);//InputRinggit
  text("Back", 100, 550);//Back
   
  text("USD", 490, 150);//OutputUSD
  text("Sterling Pound",490,250);//OutputSterlingPound
  text("Euro",490,350);//OutputEuro
  text("Ringgit",490,450);//OutputRinggit
  text("Clear",490,550);//Clear
    
  currencyConversion();
}


void currencyConversion()
{
  String strUsd, strSterlingPound, strEuro, strRinggit;
  float usd, sterlingPound, euro, ringgit;
  
  DecimalFormat dec=new DecimalFormat("0.00");

  //Adapted by JOptionPane - Processing Forum. (n.d.). Retrieved from https://forum.processing.org/one/topic/joptionpane.html .Date accessed on 1st November
  //Adapted by JAVA OptionPane.showMessageDialog output formatting for decimal. (n.d.). Retrieved from 
    //https://stackoverflow.com/questions/14762716/java-optionpane-showmessagedialog-output-formatting-for-decimal. Date accessed on 4th November
  //USD>>Sterling Pound
  if (intInUsd==1 && intOutSterlingPound==1)
  { 
    strUsd=JOptionPane.showInputDialog("Please enter the amount of USD you want:");
    usd=parseInt(strUsd);

    sterlingPound=usd*0.79;

    JOptionPane.showMessageDialog(null,"The amount of Sterling Pound is:" +dec.format(sterlingPound), "Output",JOptionPane.INFORMATION_MESSAGE);
    
    intInUsd=0;
    intOutSterlingPound=0;   
  }
  
  //USD>>Euro
  if(intInUsd==1 && intOutEuro==1)
  {
    strUsd=JOptionPane.showInputDialog("Please enter the amount of USD you want:");
    usd=parseInt(strUsd);
    
    euro=usd*0.88;
    
    JOptionPane.showMessageDialog(null,"The amount of Euro is:" +dec.format(euro),"Output",JOptionPane.INFORMATION_MESSAGE);  
    intInUsd=0;
    intOutEuro=0;
  }
  
  //USD>>Ringgit
  if(intInUsd==1 && intOutRinggit==1)
  {
    strUsd=JOptionPane.showInputDialog("Please enter the amount of USD you want:");
    usd=parseInt(strUsd);
    
    ringgit=usd*4.13;
    
    JOptionPane.showMessageDialog(null,"The amount of Ringgit is:" +dec.format(ringgit),"Output",JOptionPane.INFORMATION_MESSAGE);  
    intInUsd=0;
    intOutRinggit=0;
  }
  
  //Sterling Pound>>USD
  if(intInSterlingPound==1 && intOutUsd==1)
  {
    strSterlingPound=JOptionPane.showInputDialog("Please enter the amount of Sterling Pound you want:");
    sterlingPound=parseInt(strSterlingPound);
   
    usd=sterlingPound*1.28;
   
    JOptionPane.showMessageDialog(null,"The amount of USD is:" +dec.format(usd),"Output",JOptionPane.INFORMATION_MESSAGE);
    intInSterlingPound=0;
    intOutUsd=0;   
  }  
   
  //Sterling Pound>>Euro
  if(intInSterlingPound==1 && intOutEuro==1)
  {
    strSterlingPound=JOptionPane.showInputDialog("Please enter the amount of SterlingPound you want:");
    sterlingPound=parseInt(strSterlingPound);
    
    euro=sterlingPound*1.13;
    
    JOptionPane.showMessageDialog(null,"The amount of Euro is:" +dec.format(euro),"Output",JOptionPane.INFORMATION_MESSAGE);
    intInSterlingPound=0;
    intOutEuro=0;
  }
  
  //Sterling Pound>>Ringgit
  if(intInSterlingPound==1 && intOutRinggit==1)
  {
    strSterlingPound=JOptionPane.showInputDialog("Please enter the amount of Sterling Pound you want:");
    sterlingPound=parseInt(strSterlingPound);
    
    ringgit=sterlingPound*5.54;
    
    JOptionPane.showMessageDialog(null,"The amount of Ringgit is:" +dec.format(ringgit),"Output",JOptionPane.INFORMATION_MESSAGE);
    intInSterlingPound=0;
    intOutRinggit=0; 
  }
  
  //Euro>>USD
  if(intInEuro==1 && intOutUsd==1)
  {
    strEuro=JOptionPane.showInputDialog("Please enter the amount of Euro you want:");
    euro=parseInt(strEuro);
    
    usd=euro*1.13;
    
    JOptionPane.showMessageDialog(null,"The amount of USD is:"+dec.format(usd),"Output",JOptionPane.INFORMATION_MESSAGE);   
    intInEuro=0;
    intOutUsd=0;
  }
  
  //Euro>>Sterling Pound
  if(intInEuro==1 && intOutSterlingPound==1)
  {
    strEuro=JOptionPane.showInputDialog(null,"Please enter the amount of Euro you want:");
    euro=parseInt(strEuro);
    
    sterlingPound=euro*0.88;
    
    JOptionPane.showMessageDialog(null,"The amount of Sterling Pound is:"+dec.format(sterlingPound),"Output",JOptionPane.INFORMATION_MESSAGE);  
    intInEuro=0;
    intOutSterlingPound=0;
  }
  
  //Euro>>Ringgit
  if(intInEuro==1 && intOutRinggit==1)
  {
    strEuro=JOptionPane.showInputDialog(null,"Please enter the amount of Euro you want:");
    euro=parseInt(strEuro);
    
    ringgit=euro*4.75;
    
    JOptionPane.showMessageDialog(null,"The amount of Ringgit is:"+dec.format(ringgit),"Output",JOptionPane.INFORMATION_MESSAGE);
    
    intInEuro=0;
    intOutRinggit=0;
  }
  
  //Ringgit>>USD
  if(intInRinggit==1 && intOutUsd==1)
  {
   strRinggit=JOptionPane.showInputDialog(null,"Please enter the amount of Ringgit you want:");
   ringgit=parseInt(strRinggit);
   
   usd=ringgit*0.24;
   JOptionPane.showMessageDialog(null,"The amount of USD is:"+dec.format(usd),"Output",JOptionPane.INFORMATION_MESSAGE);
   intInRinggit=0;
   intOutUsd=0;
  }
  
  //Ringgit>>Sterling Pound
  if(intInRinggit==1 && intOutSterlingPound==1)
  {
   strRinggit=JOptionPane.showInputDialog(null,"Please enter the amount of Ringgit you want:");
   ringgit=parseInt(strRinggit);
   
   sterlingPound=ringgit*0.19;
   JOptionPane.showMessageDialog(null,"The amount of Sterling Pound is:"+dec.format(sterlingPound),"Output",JOptionPane.INFORMATION_MESSAGE);
   
   intInRinggit=0;
   intOutSterlingPound=0;
  }
  //Ringit>>Euro
  if(intInRinggit==1 && intOutEuro==1)
  {
   strRinggit=JOptionPane.showInputDialog(null,"Please enter the amount of Ringgit you want:");
   ringgit=parseInt(strRinggit);
   
   euro=ringgit*0.21;
   JOptionPane.showMessageDialog(null,"The amount of Euro is:"+dec.format(euro),"Output",JOptionPane.INFORMATION_MESSAGE);
   intInRinggit=0;
   intOutEuro=0;
  }
  
  //USD==USD
  if(intInUsd==1 && intOutUsd==1)
  {
   JOptionPane.showMessageDialog(null,"The input and output currency cannot be the same","Error",JOptionPane.ERROR_MESSAGE); 
   intInUsd=0;
   intOutUsd=0;
  }
  
  //Sterling Pound==Sterling Pound
  if(intInSterlingPound==1 && intOutSterlingPound==1)
  {
    JOptionPane.showMessageDialog(null,"The input and output currency cannot be the same","Error",JOptionPane.ERROR_MESSAGE); 
    intInSterlingPound=0;
    intOutSterlingPound=0;
  }
  
  //Euro==Euro
  if(intInEuro==1 && intOutEuro==1)
  {
    JOptionPane.showMessageDialog(null,"The input and output currency cannot be the same","Error",JOptionPane.ERROR_MESSAGE); 
    intInEuro=0;
    intOutEuro=0;
  }
  //Ringgit==Ringgit
  if(intInRinggit==1 && intOutRinggit==1)
  {
    JOptionPane.showMessageDialog(null,"The input and output currency cannot be the same","Error",JOptionPane.ERROR_MESSAGE); 
    intInRinggit=0; 
    intOutRinggit=0;
  } 
  
}

void currencyButton()
{
  fill(0);
  rect(200, 250, 200, 80);
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  text("Currency Exchange", 300, 300);
}

void heading()
{
  fill(0);
  rect(0, 0, 590, 150);
  fill(255, 0, 0);
  textSize(35);
  textAlign(CENTER);
  text("Welcome to Currency Converter", 290, 85);
}



void mouseClicked()
{
  //Screen 0 is Main Menu
  //screen 1 is a currency exchange 
  //Screen 2 is Credit Page
  //Screen3 is an Instruction Page
  if (screen==0) {
   
    if (mouseX>200 && mouseX<400 && mouseY>250 && mouseY<330)
    {
      screen=1;
    }
    
    if(mouseX>200 && mouseX<400 && mouseY>350 && mouseY<430)
    {
     screen=2; 
    }
    if(mouseX>200 && mouseX<400 &&mouseY>450 && mouseY<530)
    {
      screen=3;
    }
  }

  if (screen==1) {
    //back button
    if (mouseX>25 && mouseX<175 && mouseY>500 && mouseY<580)
    {
      screen=0;  
    }
      
    //Input USD button
    if (mouseX>5 && mouseX<205 && mouseY>100 && mouseY<180) 
    {
      intInUsd=1;           
    }
   
    //Input Sterling Pound button
    if (mouseX>5 && mouseX<205 && mouseY>200 && mouseY<280)
    {
      intInSterlingPound=1;
    }
    
    //Input Euro Button
    if (mouseX>5 && mouseX<205 && mouseY>300 && mouseY<380)
    {
      intInEuro=1;
    }
    
    //Input Ringgit button
    if (mouseX>5 && mouseX<205 && mouseY>400 && mouseY<480)
    {
      intInRinggit=1;
    }
    
    //Output USD Button
    if(mouseX>390 && mouseX<590 && mouseY>100 && mouseY<180)
    {
      intOutUsd=1;
    }
    
    //Output Sterling Pound Button
    if(mouseX>390 && mouseX<590 && mouseY>200 && mouseY<280)
    {
      intOutSterlingPound=1;
    }
    
    //Output Euro Button
    if(mouseX>390 && mouseX<590 && mouseY>300 && mouseY<380)
    {
      intOutEuro=1;
    }
    
    //Output Ringgit Button
    if(mouseX>390 && mouseX<590 && mouseY>400 && mouseY<480)
    {
      intOutRinggit=1;
    }
    
    //Clear button
    if(mouseX>410 && mouseX<560 && mouseY>500 && mouseY<580)
    {
      intInUsd=0; 
      intInSterlingPound=0;
      intInEuro=0;
      intInRinggit=0;
      intOutUsd=0;
      intOutSterlingPound=0;
      intOutEuro=0;
      intOutRinggit=0;
    }   
    
  }
  if(screen==2)
  {
     if (mouseX>25 && mouseX<175 && mouseY>500 && mouseY<580)
    {
      screen=0;   
    }
  }
  
  if(screen==3)
  {
    if (mouseX>25 && mouseX<175 && mouseY>500 && mouseY<580)
    {
      screen=0;   
    }
  }
}
