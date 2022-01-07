
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI4FromR8 ;

__attribute__((used)) static void test_VarI4FromR8(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarI4FromR8, -2147483649.0); EXPECT_OVERFLOW;
  CONVERT(VarI4FromR8, -2147483648.51); EXPECT_OVERFLOW;
  CONVERT(VarI4FromR8, -2147483648.5); EXPECT(-2147483647 - 1);
  CONVERT(VarI4FromR8, -2147483648.0); EXPECT(-2147483647 - 1);
  CONVERT(VarI4FromR8, -1.0); EXPECT(-1);
  CONVERT(VarI4FromR8, 0.0); EXPECT(0);
  CONVERT(VarI4FromR8, 1.0); EXPECT(1);
  CONVERT(VarI4FromR8, 2147483647.0); EXPECT(2147483647);
  CONVERT(VarI4FromR8, 2147483647.49); EXPECT(2147483647);
  CONVERT(VarI4FromR8, 2147483647.5); EXPECT_OVERFLOW;
  CONVERT(VarI4FromR8, 2147483648.0); EXPECT_OVERFLOW;

  CONVERT(VarI4FromR8, -1.5); EXPECT(-2);
  CONVERT(VarI4FromR8, -0.6); EXPECT(-1);
  CONVERT(VarI4FromR8, -0.5); EXPECT(0);
  CONVERT(VarI4FromR8, -0.4); EXPECT(0);
  CONVERT(VarI4FromR8, 0.4); EXPECT(0);
  CONVERT(VarI4FromR8, 0.5); EXPECT(0);
  CONVERT(VarI4FromR8, 0.6); EXPECT(1);
  CONVERT(VarI4FromR8, 1.5); EXPECT(2);
}
