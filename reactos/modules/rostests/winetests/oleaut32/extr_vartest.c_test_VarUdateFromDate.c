
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKPTR (int ) ;
 int DT2UD (double,int ,int ,int,int,int,int,int,int,int ,int,int) ;
 int E_INVALIDARG ;
 int S_OK ;
 int VAR_VALIDDATE ;
 int VarUdateFromDate ;

__attribute__((used)) static void test_VarUdateFromDate(void)
{
  CHECKPTR(VarUdateFromDate);
  DT2UD(29221.0,0,S_OK,1,1,1980,0,0,0,0,2,1);
  DT2UD(29222.0,0,S_OK,2,1,1980,0,0,0,0,3,2);
  DT2UD(33238.0,0,S_OK,31,12,1990,0,0,0,0,1,365);
  DT2UD(0.0,0,S_OK,30,12,1899,0,0,0,0,6,364);
  DT2UD(-657434.0,0,S_OK,1,1,100,0,0,0,0,5,1);
  DT2UD(-657435.0,0,E_INVALIDARG,0,0,0,0,0,0,0,0,0);
  DT2UD(2958465.0,0,S_OK,31,12,9999,0,0,0,0,5,365);
  DT2UD(2958466.0,0,E_INVALIDARG,0,0,0,0,0,0,0,0,0);


  DT2UD(-657435.0,VAR_VALIDDATE,E_INVALIDARG,0,0,0,0,0,0,0,0,0);
  DT2UD(2958466.0,VAR_VALIDDATE,E_INVALIDARG,0,0,0,0,0,0,0,0,0);


  DT2UD(29221.25,0,S_OK,1,1,1980,6,0,0,0,2,1);
  DT2UD(29221.33333333,0,S_OK,1,1,1980,8,0,0,0,2,1);
  DT2UD(29221.5,0,S_OK,1,1,1980,12,0,0,0,2,1);
  DT2UD(29221.9888884444,0,S_OK,1,1,1980,23,44,0,0,2,1);
  DT2UD(29221.7508765432,0,S_OK,1,1,1980,18,1,16,0,2,1);


  DT2UD(-5.25,0,S_OK,25,12,1899,6,0,0,0,1,359);
  DT2UD(-5.9999884259259,0,S_OK,25,12,1899,23,59,59,0,1,359);

  DT2UD(-4.0,0,S_OK,26,12,1899,0,0,0,0,2,360);

  DT2UD(-0.25,0,S_OK,30,12,1899,6,0,0,0,6,364);
  DT2UD(0.25,0,S_OK,30,12,1899,6,0,0,0,6,364);
}
