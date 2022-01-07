
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI1FromDate ;

__attribute__((used)) static void test_VarI1FromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarI1FromDate, -129.0); EXPECT_OVERFLOW;
  CONVERT(VarI1FromDate, -128.0); EXPECT(-128);
  CONVERT(VarI1FromDate, -1.0); EXPECT(-1);
  CONVERT(VarI1FromDate, 0.0); EXPECT(0);
  CONVERT(VarI1FromDate, 1.0); EXPECT(1);
  CONVERT(VarI1FromDate, 127.0); EXPECT(127);
  CONVERT(VarI1FromDate, 128.0); EXPECT_OVERFLOW;

  CONVERT(VarI1FromDate, -1.5); EXPECT(-2);
  CONVERT(VarI1FromDate, -0.6); EXPECT(-1);
  CONVERT(VarI1FromDate, -0.5); EXPECT(0);
  CONVERT(VarI1FromDate, -0.4); EXPECT(0);
  CONVERT(VarI1FromDate, 0.4); EXPECT(0);
  CONVERT(VarI1FromDate, 0.5); EXPECT(0);
  CONVERT(VarI1FromDate, 0.6); EXPECT(1);
  CONVERT(VarI1FromDate, 1.5); EXPECT(2);
}
