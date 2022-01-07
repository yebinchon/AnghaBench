
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECTI8 (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI8FromCy ;

__attribute__((used)) static void test_VarUI8FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarUI8FromCy,-1); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI8FromCy,0); EXPECTI8(0);
  CONVERT_CY(VarUI8FromCy,1); EXPECTI8(1);
  CONVERT_CY(VarUI8FromCy,255); EXPECTI8(255);

  CONVERT_CY(VarUI8FromCy,-1.5); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI8FromCy,-0.6); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI8FromCy,-0.5); EXPECTI8(0);
  CONVERT_CY(VarUI8FromCy,-0.4); EXPECTI8(0);
  CONVERT_CY(VarUI8FromCy,0.4); EXPECTI8(0);
  CONVERT_CY(VarUI8FromCy,0.5); EXPECTI8(0);
  CONVERT_CY(VarUI8FromCy,0.6); EXPECTI8(1);
  CONVERT_CY(VarUI8FromCy,1.5); EXPECTI8(2);
}
