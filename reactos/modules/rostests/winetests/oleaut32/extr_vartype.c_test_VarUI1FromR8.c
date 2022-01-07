
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI1FromR8 ;

__attribute__((used)) static void test_VarUI1FromR8(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarUI1FromR8, -1.0); EXPECT_OVERFLOW;
  CONVERT(VarUI1FromR8, -0.51); EXPECT_OVERFLOW;
  CONVERT(VarUI1FromR8, -0.5); EXPECT(0);
  CONVERT(VarUI1FromR8, 0.0); EXPECT(0);
  CONVERT(VarUI1FromR8, 1.0); EXPECT(1);
  CONVERT(VarUI1FromR8, 255.0); EXPECT(255);
  CONVERT(VarUI1FromR8, 255.49); EXPECT(255);
  CONVERT(VarUI1FromR8, 255.5); EXPECT_OVERFLOW;
  CONVERT(VarUI1FromR8, 256.0); EXPECT_OVERFLOW;


  CONVERT(VarUI1FromR8, -1.5); EXPECT_OVERFLOW;
  CONVERT(VarUI1FromR8, -0.6); EXPECT_OVERFLOW;
  CONVERT(VarUI1FromR8, -0.5); EXPECT(0);
  CONVERT(VarUI1FromR8, -0.4); EXPECT(0);
  CONVERT(VarUI1FromR8, 0.4); EXPECT(0);
  CONVERT(VarUI1FromR8, 0.5); EXPECT(0);
  CONVERT(VarUI1FromR8, 0.6); EXPECT(1);
  CONVERT(VarUI1FromR8, 1.5); EXPECT(2);
}
