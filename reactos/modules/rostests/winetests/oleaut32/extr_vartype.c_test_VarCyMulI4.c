
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int EXPECTCY (int) ;
 int EXPECTCY64 (unsigned long,unsigned long) ;
 int EXPECT_OVERFLOW ;
 int MATHMULI4 (double,int) ;
 int MATHVARS1 ;

__attribute__((used)) static void test_VarCyMulI4(void)
{
  MATHVARS1;
  LONG right;

  MATHMULI4(534443.0, 0); EXPECTCY(0);
  MATHMULI4(0.5, 1); EXPECTCY(0.5);
  MATHMULI4(0.5, 2); EXPECTCY(1);
  MATHMULI4(922337203685476.0, 1); EXPECTCY64(2147483647ul,4294951488ul);
  MATHMULI4(922337203685476.0, 2); EXPECT_OVERFLOW;
}
