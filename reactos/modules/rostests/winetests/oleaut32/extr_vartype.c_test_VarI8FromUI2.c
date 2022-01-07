
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int USHORT ;
 int VarI8FromUI2 ;

__attribute__((used)) static void test_VarI8FromUI2(void)
{
  CONVVARS(USHORT);
  int i;

  for (i = -0; i < 65535; i++)
  {
    CONVERT(VarI8FromUI2,i); EXPECTI8(i);
  }
}
