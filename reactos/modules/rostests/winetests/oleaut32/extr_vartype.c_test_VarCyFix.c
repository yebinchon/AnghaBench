
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECTCY (int) ;
 int MATHFIX (double) ;
 int MATHVARS1 ;

__attribute__((used)) static void test_VarCyFix(void)
{
  MATHVARS1;

  MATHFIX(-1.0001); EXPECTCY(-1);
  MATHFIX(-1.4999); EXPECTCY(-1);
  MATHFIX(-1.5001); EXPECTCY(-1);
  MATHFIX(-1.9999); EXPECTCY(-1);
  MATHFIX(-0.0001); EXPECTCY(0);
  MATHFIX(-0.4999); EXPECTCY(0);
  MATHFIX(-0.5001); EXPECTCY(0);
  MATHFIX(-0.9999); EXPECTCY(0);
  MATHFIX(0.0001); EXPECTCY(0);
  MATHFIX(0.4999); EXPECTCY(0);
  MATHFIX(0.5001); EXPECTCY(0);
  MATHFIX(0.9999); EXPECTCY(0);
  MATHFIX(1.0001); EXPECTCY(1);
  MATHFIX(1.4999); EXPECTCY(1);
  MATHFIX(1.5001); EXPECTCY(1);
  MATHFIX(1.9999); EXPECTCY(1);
}
