
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECTCY (int) ;
 int EXPECT_OVERFLOW ;
 int MATH2 (int ,double,double) ;
 int MATHVARS2 ;
 int VarCyAdd ;

__attribute__((used)) static void test_VarCyAdd(void)
{
  MATHVARS2;

  MATH2(VarCyAdd, 0.5, 0.5); EXPECTCY(1);
  MATH2(VarCyAdd, 0.5, -0.4); EXPECTCY(0.1);
  MATH2(VarCyAdd, 0.5, -0.6); EXPECTCY(-0.1);
  MATH2(VarCyAdd, -0.5, -0.5); EXPECTCY(-1);
  MATH2(VarCyAdd, -922337203685476.0, -922337203685476.0); EXPECT_OVERFLOW;
  MATH2(VarCyAdd, -922337203685476.0, 922337203685476.0); EXPECTCY(0);
  MATH2(VarCyAdd, 922337203685476.0, -922337203685476.0); EXPECTCY(0);
  MATH2(VarCyAdd, 922337203685476.0, 922337203685476.0); EXPECT_OVERFLOW;
}
