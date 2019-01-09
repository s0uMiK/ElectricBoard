# ElectricBoard
this code in swift 4.2 generates an Electricity Bill based on the units consumed by the consumer
# Source Code

#include<iostream>
  
using  namespace std;

int main(){

	int units,cono;
	float tcharge;
	char date[7];
	cout<<“Enter the date”<<endl;
	cin>>date;
	cout<<“Enter the consumer number”<<endl;
	cin>>cono;
	cout<<“Enter the no: fo units consumed”<<endl;
	cin>>units;
	if(units<=100)
	{
		tcharge = (units*2.5) +75;
	}
	else if(units >100 && units<=200)
	{
		tcharge = ((100*2.5)+(units-100)*35) + 75;
	}
	else if(units>200)
	{
		tcharge = ((100*2.5)+(100*3.5)+((units-200)*5.0)+75;
	}
	cout<<“			Bangalore Electricity Board“<<endl;
	cout<<“Date:”<<date<<“				Bill No:123”<<endl;
	cout<<“Consumer No.:”<<cono<<endl;
	cout<<“———————————————————————————“<<endl;
	cout<<“No: of units consumed:”<<units<<endl;
	cout<<“Total Charge:”<<tcharge<<endl;
	cout<<“———————————————————————————”<<endl;
  return 0;
  
}
