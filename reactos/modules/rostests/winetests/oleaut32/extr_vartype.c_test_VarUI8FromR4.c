
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int EXPECT_OVERFLOW ;
 int FLOAT ;
 int VarUI8FromR4 ;

__attribute__((used)) static void test_VarUI8FromR4(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarUI8FromR4, -1.0f); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromR4, 0.0f); EXPECTI8(0);
  CONVERT(VarUI8FromR4, 1.0f); EXPECTI8(1);
  CONVERT(VarUI8FromR4, 255.0f); EXPECTI8(255);

  CONVERT(VarUI8FromR4, -1.5f); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromR4, -0.6f); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromR4, -0.5f); EXPECTI8(0);
  CONVERT(VarUI8FromR4, -0.4f); EXPECTI8(0);
  CONVERT(VarUI8FromR4, 0.4f); EXPECTI8(0);
  CONVERT(VarUI8FromR4, 0.5f); EXPECTI8(0);
  CONVERT(VarUI8FromR4, 0.6f); EXPECTI8(1);
  CONVERT(VarUI8FromR4, 1.5f); EXPECTI8(2);
}
