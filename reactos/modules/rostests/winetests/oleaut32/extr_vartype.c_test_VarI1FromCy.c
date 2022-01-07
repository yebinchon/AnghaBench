
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI1FromCy ;

__attribute__((used)) static void test_VarI1FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarI1FromCy,-129); EXPECT_OVERFLOW;
  CONVERT_CY(VarI1FromCy,-128); EXPECT(128);
  CONVERT_CY(VarI1FromCy,-1); EXPECT(-1);
  CONVERT_CY(VarI1FromCy,0); EXPECT(0);
  CONVERT_CY(VarI1FromCy,1); EXPECT(1);
  CONVERT_CY(VarI1FromCy,127); EXPECT(127);
  CONVERT_CY(VarI1FromCy,128); EXPECT_OVERFLOW;

  CONVERT_CY(VarI1FromCy,-1.5); EXPECT(-2);
  CONVERT_CY(VarI1FromCy,-0.6); EXPECT(-1);
  CONVERT_CY(VarI1FromCy,-0.5); EXPECT(0);
  CONVERT_CY(VarI1FromCy,-0.4); EXPECT(0);
  CONVERT_CY(VarI1FromCy,0.4); EXPECT(0);
  CONVERT_CY(VarI1FromCy,0.5); EXPECT(0);
  CONVERT_CY(VarI1FromCy,0.6); EXPECT(1);
  CONVERT_CY(VarI1FromCy,1.5); EXPECT(2);
}
