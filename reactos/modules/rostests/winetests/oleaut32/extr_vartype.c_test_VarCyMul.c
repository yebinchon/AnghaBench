
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECTCY (double) ;
 int EXPECT_OVERFLOW ;
 int MATH2 (int ,double,int) ;
 int MATHVARS2 ;
 int VarCyMul ;

__attribute__((used)) static void test_VarCyMul(void)
{
  MATHVARS2;

  MATH2(VarCyMul, 534443.0, 0.0); EXPECTCY(0);
  MATH2(VarCyMul, 0.5, 0.5); EXPECTCY(0.25);
  MATH2(VarCyMul, 0.5, -0.4); EXPECTCY(-0.2);
  MATH2(VarCyMul, 0.5, -0.6); EXPECTCY(-0.3);
  MATH2(VarCyMul, -0.5, -0.5); EXPECTCY(0.25);
  MATH2(VarCyMul, 922337203685476.0, 20000); EXPECT_OVERFLOW;
}
