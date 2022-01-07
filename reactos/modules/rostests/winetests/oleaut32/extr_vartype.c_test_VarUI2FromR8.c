
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI2FromR8 ;

__attribute__((used)) static void test_VarUI2FromR8(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarUI2FromR8, -1.0); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR8, -0.51); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR8, -0.5); EXPECT(0);
  CONVERT(VarUI2FromR8, 0.0); EXPECT(0);
  CONVERT(VarUI2FromR8, 1.0); EXPECT(1);
  CONVERT(VarUI2FromR8, 65535.0); EXPECT(65535);
  CONVERT(VarUI2FromR8, 65535.49); EXPECT(65535);
  CONVERT(VarUI2FromR8, 65535.5); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR8, 65536.0); EXPECT_OVERFLOW;


  CONVERT(VarUI2FromR8, -1.5); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR8, -0.6); EXPECT_OVERFLOW;
  CONVERT(VarUI2FromR8, -0.5); EXPECT(0);
  CONVERT(VarUI2FromR8, -0.4); EXPECT(0);
  CONVERT(VarUI2FromR8, 0.4); EXPECT(0);
  CONVERT(VarUI2FromR8, 0.5); EXPECT(0);
  CONVERT(VarUI2FromR8, 0.6); EXPECT(1);
  CONVERT(VarUI2FromR8, 1.5); EXPECT(2);
}
