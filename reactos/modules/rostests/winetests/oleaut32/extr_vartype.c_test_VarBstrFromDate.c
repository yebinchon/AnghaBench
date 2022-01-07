
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BSTR_DATE (double,char*) ;

__attribute__((used)) static void test_VarBstrFromDate(void)
{


  _BSTR_DATE(0.0,"12:00:00 AM",21);
  _BSTR_DATE(3.34,"1/2/1900 8:09:36 AM",22);
  _BSTR_DATE(3339.34,"2/20/1909 8:09:36 AM",23);
  _BSTR_DATE(365.00,"12/30/1900",24);
  _BSTR_DATE(365.25,"12/30/1900 6:00:00 AM",25);
  _BSTR_DATE(1461.0,"12/31/1903",26);
  _BSTR_DATE(1461.5,"12/31/1903 12:00:00 PM",27);
  _BSTR_DATE(-49192.24,"4/24/1765 5:45:36 AM",28);
  _BSTR_DATE(-657434.0,"1/1/100",29);
  _BSTR_DATE(2958465.0,"12/31/9999",30);


}
