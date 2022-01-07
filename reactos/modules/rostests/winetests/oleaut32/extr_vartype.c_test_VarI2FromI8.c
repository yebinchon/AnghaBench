
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarI2FromI8 ;

__attribute__((used)) static void test_VarI2FromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarI2FromI8, -32769); EXPECT_OVERFLOW;
  CONVERT(VarI2FromI8, -32768); EXPECT(-32768);
  CONVERT(VarI2FromI8, 32767); EXPECT(32767);
  CONVERT(VarI2FromI8, 32768); EXPECT_OVERFLOW;
}
