
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTDECI ;
 int SHORT ;
 int VarDecFromI2 ;

__attribute__((used)) static void test_VarDecFromI2(void)
{
  CONVVARS(SHORT);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarDecFromI2,i); EXPECTDECI;
  }
}
