
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKPTR (int ) ;
 int FALSE ;
 int ST2DT (int,int,int,int ,int ,int ,int ,int ,double) ;
 int SystemTimeToVariantTime ;
 int TRUE ;

__attribute__((used)) static void test_SystemTimeToVariantTime(void)
{
  CHECKPTR(SystemTimeToVariantTime);
  ST2DT(1,1,1980,0,0,0,0,TRUE,29221.0);
  ST2DT(2,1,1980,0,0,0,0,TRUE,29222.0);
  ST2DT(0,1,1980,0,0,0,0,TRUE,29220.0);
  ST2DT(1,13,1980,0,0,0,0,FALSE,29587.0);
  ST2DT(32,1,1980,0,0,0,0,FALSE,0.0);
  ST2DT(1,1,-1,0,0,0,0,FALSE,0.0);
  ST2DT(1,1,10000,0,0,0,0,FALSE,0.0);
  ST2DT(1,1,9999,0,0,0,0,TRUE,2958101.0);
  ST2DT(31,12,90,0,0,0,0,TRUE,33238.0);
  ST2DT(1,1,30,0,0,0,0,TRUE,10959.0);
  ST2DT(1,1,29,0,0,0,0,TRUE,47119.0);
  ST2DT(1,1,0,0,0,0,0,TRUE,36526.0);
}
