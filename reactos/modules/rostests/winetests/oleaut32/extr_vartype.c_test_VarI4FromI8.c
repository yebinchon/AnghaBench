
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERT_I8 (int ,int,unsigned long) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarI4FromI8 ;

__attribute__((used)) static void test_VarI4FromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarI4FromI8, -1); EXPECT(-1);
  CONVERT(VarI4FromI8, 0); EXPECT(0);
  CONVERT(VarI4FromI8, 1); EXPECT(1);

  CONVERT_I8(VarI4FromI8, -1, 2147483647ul); EXPECT_OVERFLOW;
  CONVERT_I8(VarI4FromI8, -1, 2147483648ul); EXPECT(-2147483647 - 1);
  CONVERT_I8(VarI4FromI8, 0, 2147483647ul); EXPECT(2147483647);
  CONVERT_I8(VarI4FromI8, 0, 2147483648ul); EXPECT_OVERFLOW;
}
