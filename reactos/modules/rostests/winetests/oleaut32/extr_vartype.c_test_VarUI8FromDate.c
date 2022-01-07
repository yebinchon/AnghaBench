
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DATE ;
 int EXPECTI8 (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI8FromDate ;

__attribute__((used)) static void test_VarUI8FromDate(void)
{
  CONVVARS(DATE);

  CONVERT(VarUI8FromDate, -1.0); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromDate, 0.0); EXPECTI8(0);
  CONVERT(VarUI8FromDate, 1.0); EXPECTI8(1);
  CONVERT(VarUI8FromDate, 255.0); EXPECTI8(255);

  CONVERT(VarUI8FromDate, -1.5); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromDate, -0.6); EXPECT_OVERFLOW;
  CONVERT(VarUI8FromDate, -0.5); EXPECTI8(0);
  CONVERT(VarUI8FromDate, -0.4); EXPECTI8(0);
  CONVERT(VarUI8FromDate, 0.4); EXPECTI8(0);
  CONVERT(VarUI8FromDate, 0.5); EXPECTI8(0);
  CONVERT(VarUI8FromDate, 0.6); EXPECTI8(1);
  CONVERT(VarUI8FromDate, 1.5); EXPECTI8(2);
}
