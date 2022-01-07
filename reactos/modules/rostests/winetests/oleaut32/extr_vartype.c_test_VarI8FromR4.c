
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int FLOAT ;
 int VarI8FromR4 ;

__attribute__((used)) static void test_VarI8FromR4(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarI8FromR4, -128.0f); EXPECTI8(-128);
  CONVERT(VarI8FromR4, -1.0f); EXPECTI8(-1);
  CONVERT(VarI8FromR4, 0.0f); EXPECTI8(0);
  CONVERT(VarI8FromR4, 1.0f); EXPECTI8(1);
  CONVERT(VarI8FromR4, 127.0f); EXPECTI8(127);

  CONVERT(VarI8FromR4, -1.5f); EXPECTI8(-2);
  CONVERT(VarI8FromR4, -0.6f); EXPECTI8(-1);
  CONVERT(VarI8FromR4, -0.5f); EXPECTI8(0);
  CONVERT(VarI8FromR4, -0.4f); EXPECTI8(0);
  CONVERT(VarI8FromR4, 0.4f); EXPECTI8(0);
  CONVERT(VarI8FromR4, 0.5f); EXPECTI8(0);
  CONVERT(VarI8FromR4, 0.6f); EXPECTI8(1);
  CONVERT(VarI8FromR4, 1.5f); EXPECTI8(2);
}
