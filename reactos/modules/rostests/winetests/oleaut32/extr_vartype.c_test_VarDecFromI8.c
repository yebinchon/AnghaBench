
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTDECI ;
 int LONG64 ;
 int VarDecFromI8 ;

__attribute__((used)) static void test_VarDecFromI8(void)
{
  CONVVARS(LONG64);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    CONVERT(VarDecFromI8,i); EXPECTDECI;
  }
}
