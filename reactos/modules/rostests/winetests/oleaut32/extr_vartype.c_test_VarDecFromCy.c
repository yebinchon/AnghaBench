
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_CY (int ,double) ;
 int CONVVARS (int ) ;
 int CY ;
 int EXPECTDEC (int,int,int ,int) ;
 int VarDecFromCy ;

__attribute__((used)) static void test_VarDecFromCy(void)
{
  CONVVARS(CY);

  CONVERT_CY(VarDecFromCy, -1); EXPECTDEC(4,0x80,0,10000);
  CONVERT_CY(VarDecFromCy, 0); EXPECTDEC(4,0,0,0);
  CONVERT_CY(VarDecFromCy, 1); EXPECTDEC(4,0,0,10000);
  CONVERT_CY(VarDecFromCy, 0.5); EXPECTDEC(4,0,0,5000);
}
