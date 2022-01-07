
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI2FromDate ;

__attribute__((used)) static void test_VarI2FromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarI2FromDate, -32769.0); EXPECT_OVERFLOW;
  CONVERT(VarI2FromDate, -32768.0); EXPECT(-32768);
  CONVERT(VarI2FromDate, -1.0); EXPECT(-1);
  CONVERT(VarI2FromDate, 0.0); EXPECT(0);
  CONVERT(VarI2FromDate, 1.0); EXPECT(1);
  CONVERT(VarI2FromDate, 32767.0); EXPECT(32767);
  CONVERT(VarI2FromDate, 32768.0); EXPECT_OVERFLOW;


  CONVERT(VarI2FromDate, -1.5); EXPECT(-2);
  CONVERT(VarI2FromDate, -0.6); EXPECT(-1);
  CONVERT(VarI2FromDate, -0.5); EXPECT(0);
  CONVERT(VarI2FromDate, -0.4); EXPECT(0);
  CONVERT(VarI2FromDate, 0.4); EXPECT(0);
  CONVERT(VarI2FromDate, 0.5); EXPECT(0);
  CONVERT(VarI2FromDate, 0.6); EXPECT(1);
  CONVERT(VarI2FromDate, 1.5); EXPECT(2);
}
