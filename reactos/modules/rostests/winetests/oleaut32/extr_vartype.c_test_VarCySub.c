
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECTCY (double) ;
 int EXPECT_OVERFLOW ;
 int MATH2 (int ,double,double) ;
 int MATHVARS2 ;
 int VarCySub ;

__attribute__((used)) static void test_VarCySub(void)
{
  MATHVARS2;

  MATH2(VarCySub, 0.5, 0.5); EXPECTCY(0);
  MATH2(VarCySub, 0.5, -0.4); EXPECTCY(0.9);
  MATH2(VarCySub, 0.5, -0.6); EXPECTCY(1.1);
  MATH2(VarCySub, -0.5, -0.5); EXPECTCY(0);
  MATH2(VarCySub, -922337203685476.0, -922337203685476.0); EXPECTCY(0);
  MATH2(VarCySub, -922337203685476.0, 922337203685476.0); EXPECT_OVERFLOW;
  MATH2(VarCySub, 922337203685476.0, -922337203685476.0); EXPECT_OVERFLOW;
  MATH2(VarCySub, 922337203685476.0, 922337203685476.0); EXPECTCY(0);
}
