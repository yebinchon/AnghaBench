
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,unsigned long) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (unsigned long) ;
 int ULONG ;
 int VarI8FromUI4 ;

__attribute__((used)) static void test_VarI8FromUI4(void)
{
  CONVVARS(ULONG);

  CONVERT(VarI8FromUI4, 0); EXPECTI8(0);
  CONVERT(VarI8FromUI4, 1); EXPECTI8(1);
  CONVERT(VarI8FromUI4, 4294967295ul); EXPECTI8(4294967295ul);
}
