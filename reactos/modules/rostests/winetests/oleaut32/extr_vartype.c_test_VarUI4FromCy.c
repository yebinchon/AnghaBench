
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVERT_CY64 (int ,int,unsigned long) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI4FromCy ;

__attribute__((used)) static void test_VarUI4FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarUI4FromCy,-1); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI4FromCy,0); EXPECT(0);
  CONVERT_CY(VarUI4FromCy,1); EXPECT(1);
  CONVERT_CY64(VarUI4FromCy,0,4294967295ul); EXPECT(4294967295ul);
  CONVERT_CY64(VarUI4FromCy,1,0); EXPECT_OVERFLOW;

  CONVERT_CY(VarUI4FromCy,-1.5); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI4FromCy,-0.6); EXPECT_OVERFLOW;
  CONVERT_CY(VarUI4FromCy,-0.5); EXPECT(0);
  CONVERT_CY(VarUI4FromCy,-0.4); EXPECT(0);
  CONVERT_CY(VarUI4FromCy,0.4); EXPECT(0);
  CONVERT_CY(VarUI4FromCy,0.5); EXPECT(0);
  CONVERT_CY(VarUI4FromCy,0.6); EXPECT(1);
  CONVERT_CY(VarUI4FromCy,1.5); EXPECT(2);
}
