
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI4FromDate ;

__attribute__((used)) static void test_VarI4FromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarI4FromDate, -2147483649.0); EXPECT_OVERFLOW;
  CONVERT(VarI4FromDate, -2147483648.0); EXPECT(-2147483647 - 1);
  CONVERT(VarI4FromDate, -1.0); EXPECT(-1);
  CONVERT(VarI4FromDate, 0.0); EXPECT(0);
  CONVERT(VarI4FromDate, 1.0); EXPECT(1);
  CONVERT(VarI4FromDate, 2147483647.0); EXPECT(2147483647);
  CONVERT(VarI4FromDate, 2147483648.0); EXPECT_OVERFLOW;

  CONVERT(VarI4FromDate, -1.5); EXPECT(-2);
  CONVERT(VarI4FromDate, -0.6); EXPECT(-1);
  CONVERT(VarI4FromDate, -0.5); EXPECT(0);
  CONVERT(VarI4FromDate, -0.4); EXPECT(0);
  CONVERT(VarI4FromDate, 0.4); EXPECT(0);
  CONVERT(VarI4FromDate, 0.5); EXPECT(0);
  CONVERT(VarI4FromDate, 0.6); EXPECT(1);
  CONVERT(VarI4FromDate, 1.5); EXPECT(2);
}
