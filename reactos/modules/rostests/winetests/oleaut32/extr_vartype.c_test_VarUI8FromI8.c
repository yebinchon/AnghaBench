
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarUI8FromI8 ;

__attribute__((used)) static void test_VarUI8FromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarUI8FromI8, -1); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromI8, 0); EXPECTI8(0);
  CONVERT(VarUI8FromI8, 1); EXPECTI8(1);
}
