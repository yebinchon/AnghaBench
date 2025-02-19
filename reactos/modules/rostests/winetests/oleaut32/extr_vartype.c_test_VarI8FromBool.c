
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int VARIANT_BOOL ;
 int VarI8FromBool ;

__attribute__((used)) static void test_VarI8FromBool(void)
{
  CONVVARS(VARIANT_BOOL);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarI8FromBool,i); EXPECTI8(i);
  }
}
