
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int FLOAT ;
 int VarI1FromR4 ;

__attribute__((used)) static void test_VarI1FromR4(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarI1FromR4, -129.0f); EXPECT_OVERFLOW;
  CONVERT(VarI1FromR4, -128.51f); EXPECT_OVERFLOW;
  CONVERT(VarI1FromR4, -128.5f); EXPECT(-128);
  CONVERT(VarI1FromR4, -128.0f); EXPECT(-128);
  CONVERT(VarI1FromR4, -1.0f); EXPECT(-1);
  CONVERT(VarI1FromR4, 0.0f); EXPECT(0);
  CONVERT(VarI1FromR4, 1.0f); EXPECT(1);
  CONVERT(VarI1FromR4, 127.0f); EXPECT(127);
  CONVERT(VarI1FromR4, 127.49f); EXPECT(127);
  CONVERT(VarI1FromR4, 127.5f); EXPECT_OVERFLOW;
  CONVERT(VarI1FromR4, 128.0f); EXPECT_OVERFLOW;

  CONVERT(VarI1FromR4, -1.5f); EXPECT(-2);
  CONVERT(VarI1FromR4, -0.6f); EXPECT(-1);
  CONVERT(VarI1FromR4, -0.5f); EXPECT(0);
  CONVERT(VarI1FromR4, -0.4f); EXPECT(0);
  CONVERT(VarI1FromR4, 0.4f); EXPECT(0);
  CONVERT(VarI1FromR4, 0.5f); EXPECT(0);
  CONVERT(VarI1FromR4, 0.6f); EXPECT(1);
  CONVERT(VarI1FromR4, 1.5f); EXPECT(2);
}
