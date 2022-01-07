
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int EXPECT_OVERFLOW ;
 int SHORT ;
 int VarUI8FromI2 ;

__attribute__((used)) static void test_VarUI8FromI2(void)
{
  CONVVARS(SHORT);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarUI8FromI2,i);
    if (i < 0)
      EXPECT_OVERFLOW;
    else
      EXPECTI8(i);
  }
}
