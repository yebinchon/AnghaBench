
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTDECI ;
 int LONG ;
 int VarDecFromI4 ;

__attribute__((used)) static void test_VarDecFromI4(void)
{
  CONVVARS(LONG);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarDecFromI4,i); EXPECTDECI;
  }
}
