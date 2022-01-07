
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI1FromR8 ;

__attribute__((used)) static void test_VarI1FromR8(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarI1FromR8, -129.0); EXPECT_OVERFLOW;
  CONVERT(VarI1FromR8, -128.51); EXPECT_OVERFLOW;
  CONVERT(VarI1FromR8, -128.5); EXPECT(-128);
  CONVERT(VarI1FromR8, -128.0); EXPECT(-128);
  CONVERT(VarI1FromR8, -1.0); EXPECT(-1);
  CONVERT(VarI1FromR8, 0.0); EXPECT(0);
  CONVERT(VarI1FromR8, 1.0); EXPECT(1);
  CONVERT(VarI1FromR8, 127.0); EXPECT(127);
  CONVERT(VarI1FromR8, 127.49); EXPECT(127);
  CONVERT(VarI1FromR8, 127.5); EXPECT_OVERFLOW;
  CONVERT(VarI1FromR8, 128.0); EXPECT_OVERFLOW;

  CONVERT(VarI1FromR8, -1.5); EXPECT(-2);
  CONVERT(VarI1FromR8, -0.6); EXPECT(-1);
  CONVERT(VarI1FromR8, -0.5); EXPECT(0);
  CONVERT(VarI1FromR8, -0.4); EXPECT(0);
  CONVERT(VarI1FromR8, 0.4); EXPECT(0);
  CONVERT(VarI1FromR8, 0.5); EXPECT(0);
  CONVERT(VarI1FromR8, 0.6); EXPECT(1);
  CONVERT(VarI1FromR8, 1.5); EXPECT(2);
}
