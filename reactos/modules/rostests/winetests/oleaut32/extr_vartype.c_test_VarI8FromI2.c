
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int SHORT ;
 int VarI8FromI2 ;

__attribute__((used)) static void test_VarI8FromI2(void)
{
  CONVVARS(SHORT);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarI8FromI2,i); EXPECTI8(i);
  }
}
