
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int FLOAT ;
 int VarUI2FromR4 ;

__attribute__((used)) static void test_VarUI2FromR4(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarUI2FromR4, -1.0f); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR4, -0.51f); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR4, -0.5f); EXPECT(0);
  CONVERT(VarUI2FromR4, 0.0f); EXPECT(0);
  CONVERT(VarUI2FromR4, 1.0f); EXPECT(1);
  CONVERT(VarUI2FromR4, 65535.0f); EXPECT(65535);
  CONVERT(VarUI2FromR4, 65535.49f); EXPECT(65535);
  CONVERT(VarUI2FromR4, 65535.5f); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR4, 65536.0f); EXPECT_OVERFLOW;


  CONVERT(VarUI2FromR4, -1.5f); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR4, -0.6f); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR4, -0.5f); EXPECT(0);
  CONVERT(VarUI2FromR4, -0.4f); EXPECT(0);
  CONVERT(VarUI2FromR4, 0.4f); EXPECT(0);
  CONVERT(VarUI2FromR4, 0.5f); EXPECT(0);
  CONVERT(VarUI2FromR4, 0.6f); EXPECT(1);
  CONVERT(VarUI2FromR4, 1.5f); EXPECT(2);
}
