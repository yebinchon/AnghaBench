
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTCY (int) ;
 int VARIANT_BOOL ;
 int VarCyFromBool ;

__attribute__((used)) static void test_VarCyFromBool(void)
{
  CONVVARS(VARIANT_BOOL);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarCyFromBool, i); EXPECTCY(i);
  }
}
