
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int ULONG ;
 int VarUI8FromUI4 ;

__attribute__((used)) static void test_VarUI8FromUI4(void)
{
  CONVVARS(ULONG);

  CONVERT(VarUI8FromUI4, 0); EXPECTI8(0);
  CONVERT(VarUI8FromUI4, 0xffffffff); EXPECTI8(0xffffffff);
}
