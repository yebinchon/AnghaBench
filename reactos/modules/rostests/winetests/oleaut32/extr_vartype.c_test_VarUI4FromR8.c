
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI4FromR4 ;
 int VarUI4FromR8 ;

__attribute__((used)) static void test_VarUI4FromR8(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarUI4FromR8, -1.0); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromR4, -0.51f); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromR4, -0.5f); EXPECT(0);
  CONVERT(VarUI4FromR8, 0.0); EXPECT(0);
  CONVERT(VarUI4FromR8, 1.0); EXPECT(1);
  CONVERT(VarUI4FromR8, 4294967295.0); EXPECT(4294967295ul);
  CONVERT(VarUI4FromR8, 4294967295.49); EXPECT(4294967295ul);
  CONVERT(VarUI4FromR8, 4294967295.5); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromR8, 4294967296.0); EXPECT_OVERFLOW;

  CONVERT(VarUI4FromR8, -1.5); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromR8, -0.6); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromR8, -0.5); EXPECT(0);
  CONVERT(VarUI4FromR8, -0.4); EXPECT(0);
  CONVERT(VarUI4FromR8, 0.4); EXPECT(0);
  CONVERT(VarUI4FromR8, 0.5); EXPECT(0);
  CONVERT(VarUI4FromR8, 0.6); EXPECT(1);
  CONVERT(VarUI4FromR8, 1.5); EXPECT(2);
}
