
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECTI8 (int) ;
 int VarI8FromCy ;

__attribute__((used)) static void test_VarI8FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarI8FromCy,-128); EXPECTI8(-129);
  CONVERT_CY(VarI8FromCy,-1); EXPECTI8(-2);
  CONVERT_CY(VarI8FromCy,0); EXPECTI8(0);
  CONVERT_CY(VarI8FromCy,1); EXPECTI8(1);
  CONVERT_CY(VarI8FromCy,127); EXPECTI8(127);

  CONVERT_CY(VarI8FromCy,-1.5); EXPECTI8(-2);
  CONVERT_CY(VarI8FromCy,-0.6); EXPECTI8(-1);
  CONVERT_CY(VarI8FromCy,-0.5); EXPECTI8(-1);
  CONVERT_CY(VarI8FromCy,-0.4); EXPECTI8(-1);
  CONVERT_CY(VarI8FromCy,0.4); EXPECTI8(0);
  CONVERT_CY(VarI8FromCy,0.5); EXPECTI8(0);
  CONVERT_CY(VarI8FromCy,0.6); EXPECTI8(1);
  CONVERT_CY(VarI8FromCy,1.5); EXPECTI8(2);
}
