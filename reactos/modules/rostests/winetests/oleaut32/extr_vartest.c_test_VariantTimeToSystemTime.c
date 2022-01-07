
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKPTR (int ) ;
 int DT2ST (double,int,int,int,int,int ,int ,int ,int ) ;
 int VariantTimeToSystemTime ;

__attribute__((used)) static void test_VariantTimeToSystemTime(void)
{
  CHECKPTR(VariantTimeToSystemTime);
  DT2ST(29221.0,1,1,1,1980,0,0,0,0);
  DT2ST(29222.0,1,2,1,1980,0,0,0,0);
}
