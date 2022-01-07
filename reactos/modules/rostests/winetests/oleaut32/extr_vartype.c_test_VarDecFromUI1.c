
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE ;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTDECI ;
 int VarDecFromUI1 ;

__attribute__((used)) static void test_VarDecFromUI1(void)
{
  CONVVARS(BYTE);
  int i;

  for (i = 0; i < 256; i++)
  {
    CONVERT(VarDecFromUI1,i); EXPECTDECI;
  }
}
