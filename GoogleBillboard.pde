public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113200709328709127443747047230696977209310141692836819025515108657463772111252389784425056953696770785449969967946864454905987931636889230098793127736178215424999229576351482208269895193668033182528869398496465105820939239829488793320362509443117301238197068416140397019837679320683282376464804295311802328782509819455815301756717361332069811250996181881593041690351598888519345807273866738589422879228499892086805825749279610484198444363463244968487560233624827041978623209002160990";  
boolean found = false;
int count = 0;
boolean fournine = false;
int f=0;
int total = 0;
public void setup()  
{           
  for (int i=2; i<e.length()-10; i++)
  {
    if (found == false)
    {
      String digits = e.substring(i,i+10);
      double dNum = Double.parseDouble(digits);
      if (isPrime(dNum)==true)
        {
          System.out.println("The first 10 digit prime in e is: "+dNum);
          found = true;
        }
    }
  }
  //String test = e.substring(i,i+1);
  //double test2 = Double.parseDouble(test);
  //System.out.println(test2);
  
  for (int i=2; i<e.length()-10; i++)
  {
    if (f != 5 && fournine==false)
    {
      String one = e.substring(i,i+1);
      double one2 = Double.parseDouble(one);
      String two = e.substring(i+1,i+2);
      double two2 = Double.parseDouble(two);
      String three = e.substring(i+2,i+3);
      double three2 = Double.parseDouble(three);
      
      String four = e.substring(i+3,i+4);
      double four2 = Double.parseDouble(four);
      String five = e.substring(i+4,i+5);
      double five2 = Double.parseDouble(five);
      String six = e.substring(i+5,i+6);
      double six2 = Double.parseDouble(six);
      
      String seven = e.substring(i+6,i+7);
      double seven2 = Double.parseDouble(seven);
      String eight = e.substring(i+7,i+8);
      double eight2 = Double.parseDouble(eight);
      String nine = e.substring(i+8,i+9);
      double nine2 = Double.parseDouble(nine);
      
      String ten = e.substring(i+9,i+10);
      double ten2 = Double.parseDouble(ten);
      
      if (FortyNine(one2,two2,three2,four2,five2,six2,seven2,eight2,nine2,ten2)==true)
        {
          f = f+1;
          if (f==5)
          {
            System.out.println("f(5) is: "+(int)one2+(int)two2+(int)three2+(int)four2+(int)five2+(int)six2+(int)seven2+(int)eight2+(int)nine2+(int)ten2);
            fournine = true;
          }
        }
    }
  }
}  
public boolean isPrime(double num)  
{   
  if (num==1)
    return false;
  if (num<0)
    return false;
  for (int i=2; i<=Math.sqrt(num); i++)
  {
    if (num%i==0)//0 means it is factorable, therefore not prime
      return false;
  }
  return true;
} 

//second puzzle is 10 consecutive digits in e that add up to 49
public boolean FortyNine (double num1,double num2,double num3,double num4,double num5,double num6,double num7,double num8,double num9,double num10)
{
  total = (int)(num1+num2+num3+num4+num5+num6+num7+num8+num9+num10);
  if (total == 49)
    return true;
  else return false;
}

//checks for the number of factors
//public int numberOfFactors(double num)
//{
//  count = 0;
//  for (int i=2; i<=Math.sqrt(num); i++)
//  {
//    if (num%i==0)//0 means it is factorable, therefore not prime
//      {
//        count = count + 1;
//      }
//  }
//  return count;
//}