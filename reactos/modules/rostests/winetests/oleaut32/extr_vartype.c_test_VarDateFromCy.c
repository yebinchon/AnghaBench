
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECT (double) ;
 int VarDateFromCy ;

__attribute__((used)) static void test_VarDateFromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarDateFromCy,-32769); EXPECT(-32769.0);
  CONVERT_CY(VarDateFromCy,-32768); EXPECT(-32768.0);
  CONVERT_CY(VarDateFromCy,-1); EXPECT(-1.0);
  CONVERT_CY(VarDateFromCy,0); EXPECT(0.0);
  CONVERT_CY(VarDateFromCy,1); EXPECT(1.0);
  CONVERT_CY(VarDateFromCy,32767); EXPECT(32767.0);
  CONVERT_CY(VarDateFromCy,32768); EXPECT(32768.0);

  CONVERT_CY(VarDateFromCy,-1.5); EXPECT(-1.5);
  CONVERT_CY(VarDateFromCy,-0.6); EXPECT(-0.6);
  CONVERT_CY(VarDateFromCy,-0.5); EXPECT(-0.5);
  CONVERT_CY(VarDateFromCy,-0.4); EXPECT(-0.4);
  CONVERT_CY(VarDateFromCy,0.4); EXPECT(0.4);
  CONVERT_CY(VarDateFromCy,0.5); EXPECT(0.5);
  CONVERT_CY(VarDateFromCy,0.6); EXPECT(0.6);
  CONVERT_CY(VarDateFromCy,1.5); EXPECT(1.5);
}
