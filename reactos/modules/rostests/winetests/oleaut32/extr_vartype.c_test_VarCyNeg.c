
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECTCY (double) ;
 int EXPECTCY64 (unsigned long,unsigned long) ;
 int MATH1 (int ,double) ;
 int MATHVARS1 ;
 int VarCyNeg ;

__attribute__((used)) static void test_VarCyNeg(void)
{
  MATHVARS1;

  MATH1(VarCyNeg, 0.5); EXPECTCY(-0.5);
  MATH1(VarCyNeg, -0.5); EXPECTCY(0.5);
  MATH1(VarCyNeg, 922337203685476.0); EXPECTCY64(2147483648ul,15808);
  MATH1(VarCyNeg, -922337203685476.0); EXPECTCY64(2147483647ul,4294951488ul);
}
