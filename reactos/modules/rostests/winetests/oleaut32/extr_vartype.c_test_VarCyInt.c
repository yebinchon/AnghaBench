
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECTCY (int) ;
 int MATHINT (double) ;
 int MATHVARS1 ;

__attribute__((used)) static void test_VarCyInt(void)
{
  MATHVARS1;

  MATHINT(-1.0001); EXPECTCY(-2);
  MATHINT(-1.4999); EXPECTCY(-2);
  MATHINT(-1.5001); EXPECTCY(-2);
  MATHINT(-1.9999); EXPECTCY(-2);
  MATHINT(-0.0001); EXPECTCY(-1);
  MATHINT(-0.4999); EXPECTCY(-1);
  MATHINT(-0.5001); EXPECTCY(-1);
  MATHINT(-0.9999); EXPECTCY(-1);
  MATHINT(0.0001); EXPECTCY(0);
  MATHINT(0.4999); EXPECTCY(0);
  MATHINT(0.5001); EXPECTCY(0);
  MATHINT(0.9999); EXPECTCY(0);
  MATHINT(1.0001); EXPECTCY(1);
  MATHINT(1.4999); EXPECTCY(1);
  MATHINT(1.5001); EXPECTCY(1);
  MATHINT(1.9999); EXPECTCY(1);
}
