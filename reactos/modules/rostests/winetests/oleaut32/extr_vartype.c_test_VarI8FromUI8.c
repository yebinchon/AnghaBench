
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERT_I8 (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int EXPECTI864 (int,int) ;
 int EXPECT_OVERFLOW ;
 int ULONG64 ;
 int VarI8FromUI8 ;

__attribute__((used)) static void test_VarI8FromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarI8FromUI8, 0); EXPECTI8(0);
  CONVERT(VarI8FromUI8, 1); EXPECTI8(1);
  CONVERT_I8(VarI8FromUI8, 0x7fffffff, 0xffffffff); EXPECTI864(0x7fffffff, 0xffffffff);
  CONVERT_I8(VarI8FromUI8, 0x80000000, 0); EXPECT_OVERFLOW;
}
