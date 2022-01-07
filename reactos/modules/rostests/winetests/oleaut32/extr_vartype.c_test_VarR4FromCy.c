
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECT (float) ;
 int VarR4FromCy ;

__attribute__((used)) static void test_VarR4FromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarR4FromCy,-32768); EXPECT(-32768.0f);
  CONVERT_CY(VarR4FromCy,-1); EXPECT(-1.0f);
  CONVERT_CY(VarR4FromCy,0); EXPECT(0.0f);
  CONVERT_CY(VarR4FromCy,1); EXPECT(1.0f);
  CONVERT_CY(VarR4FromCy,32768); EXPECT(32768.0f);

  CONVERT_CY(VarR4FromCy,-1.5); EXPECT(-1.5f);
  CONVERT_CY(VarR4FromCy,-0.6); EXPECT(-0.6f);
  CONVERT_CY(VarR4FromCy,-0.5); EXPECT(-0.5f);
  CONVERT_CY(VarR4FromCy,-0.4); EXPECT(-0.4f);
  CONVERT_CY(VarR4FromCy,0.4); EXPECT(0.4f);
  CONVERT_CY(VarR4FromCy,0.5); EXPECT(0.5f);
  CONVERT_CY(VarR4FromCy,0.6); EXPECT(0.6f);
  CONVERT_CY(VarR4FromCy,1.5); EXPECT(1.5f);
}
