
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTDECI ;
 int ULONG ;
 int VarDecFromUI4 ;

__attribute__((used)) static void test_VarDecFromUI4(void)
{
  CONVVARS(ULONG);
  int i;

  for (i = 0; i < 65536; i++)
  {
    CONVERT(VarDecFromUI4,i); EXPECTDECI;
  }
}
