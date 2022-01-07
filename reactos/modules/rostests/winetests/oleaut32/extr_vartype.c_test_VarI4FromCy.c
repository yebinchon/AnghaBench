
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
 int VarI4FromCy ;

__attribute__((used)) static void test_VarI4FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarI4FromCy,-1); EXPECT(-1);
  CONVERT_CY(VarI4FromCy,0); EXPECT(0);
  CONVERT_CY(VarI4FromCy,1); EXPECT(1);

  CONVERT_CY64(VarI4FromCy,-1,2147483647ul); EXPECT_OVERFLOW;
  CONVERT_CY64(VarI4FromCy,-1,2147483648ul); EXPECT(-2147483647 - 1);
  CONVERT_CY64(VarI4FromCy,0,2147483647ul); EXPECT(2147483647ul);
  CONVERT_CY64(VarI4FromCy,0,2147483648ul); EXPECT_OVERFLOW;

  CONVERT_CY(VarI4FromCy,-1.5); EXPECT(-2);
  CONVERT_CY(VarI4FromCy,-0.6); EXPECT(-1);
  CONVERT_CY(VarI4FromCy,-0.5); EXPECT(0);
  CONVERT_CY(VarI4FromCy,-0.4); EXPECT(0);
  CONVERT_CY(VarI4FromCy,0.4); EXPECT(0);
  CONVERT_CY(VarI4FromCy,0.5); EXPECT(0);
  CONVERT_CY(VarI4FromCy,0.6); EXPECT(1);
  CONVERT_CY(VarI4FromCy,1.5); EXPECT(2);
}
