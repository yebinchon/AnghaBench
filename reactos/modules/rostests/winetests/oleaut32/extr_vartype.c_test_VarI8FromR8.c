
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECTI8 (int) ;
 int VarI8FromR8 ;

__attribute__((used)) static void test_VarI8FromR8(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarI8FromR8, -128.0); EXPECTI8(-128);
  CONVERT(VarI8FromR8, -1.0); EXPECTI8(-1);
  CONVERT(VarI8FromR8, 0.0); EXPECTI8(0);
  CONVERT(VarI8FromR8, 1.0); EXPECTI8(1);
  CONVERT(VarI8FromR8, 127.0); EXPECTI8(127);

  CONVERT(VarI8FromR8, -1.5); EXPECTI8(-2);
  CONVERT(VarI8FromR8, -0.6); EXPECTI8(-1);
  CONVERT(VarI8FromR8, -0.5); EXPECTI8(0);
  CONVERT(VarI8FromR8, -0.4); EXPECTI8(0);
  CONVERT(VarI8FromR8, 0.4); EXPECTI8(0);
  CONVERT(VarI8FromR8, 0.5); EXPECTI8(0);
  CONVERT(VarI8FromR8, 0.6); EXPECTI8(1);
  CONVERT(VarI8FromR8, 1.5); EXPECTI8(2);
}
