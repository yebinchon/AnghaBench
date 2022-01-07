
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKPTR (int ) ;
 int DT2DOS (double,int,int,int,int,int,int,int) ;
 int VariantTimeToDosDateTime ;

__attribute__((used)) static void test_VariantTimeToDosDateTime(void)
{
  CHECKPTR(VariantTimeToDosDateTime);


  DT2DOS(29221.0,1,1,1,1980,0,0,0);
  DT2DOS(73050.0,1,31,12,2099,0,0,0);
  DT2DOS(29220.0,0,0,0,0,0,0,0);
  DT2DOS(73415.0,0,0,0,0,0,0,0);


  DT2DOS(29221.00032407407,1,1,1,1980,0,0,29);
  DT2DOS(29221.00034722222,1,1,1,1980,0,0,31);
  DT2DOS(29221.04097222222,1,1,1,1980,0,59,0);
  DT2DOS(29221.95833333333,1,1,1,1980,23,0,0);
}
