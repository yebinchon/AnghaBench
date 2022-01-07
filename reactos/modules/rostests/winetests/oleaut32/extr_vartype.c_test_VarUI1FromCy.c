
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI1FromCy ;

__attribute__((used)) static void test_VarUI1FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarUI1FromCy,-1); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI1FromCy,0); EXPECT(0);
  CONVERT_CY(VarUI1FromCy,1); EXPECT(1);
  CONVERT_CY(VarUI1FromCy,255); EXPECT(255);
  CONVERT_CY(VarUI1FromCy,256); EXPECT_OVERFLOW;


  CONVERT_CY(VarUI1FromCy,-1.5); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI1FromCy,-0.6); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI1FromCy,-0.5); EXPECT(0);
  CONVERT_CY(VarUI1FromCy,-0.4); EXPECT(0);
  CONVERT_CY(VarUI1FromCy,0.4); EXPECT(0);
  CONVERT_CY(VarUI1FromCy,0.5); EXPECT(0);
  CONVERT_CY(VarUI1FromCy,0.6); EXPECT(1);
  CONVERT_CY(VarUI1FromCy,1.5); EXPECT(2);
}
