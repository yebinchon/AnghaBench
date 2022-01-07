
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int CY ;


 int EXPECT_EQ ;
 int EXPECT_GT ;
 int EXPECT_LT ;
 int MATHCMPR8 (double,double) ;

__attribute__((used)) static void test_VarCyCmpR8(void)
{
  HRESULT hres;
  double left = 0.0;
  CY cyLeft;
  double right;

  MATHCMPR8(-1.0, -1.0); EXPECT_EQ;
  MATHCMPR8(-1.0, 0.0); EXPECT_LT;
  MATHCMPR8(-1.0, 1.0); EXPECT_LT;
  MATHCMPR8(-1.0, 2.0); EXPECT_LT;
  MATHCMPR8(0.0, 1.0); EXPECT_LT;
  MATHCMPR8(0.0, 0.0); EXPECT_EQ;
  MATHCMPR8(0.0, -1.0); EXPECT_GT;
  MATHCMPR8(1.0, -1.0); EXPECT_GT;
  MATHCMPR8(1.0, 0.0); EXPECT_GT;
  MATHCMPR8(1.0, 1.0); EXPECT_EQ;
  MATHCMPR8(1.0, 2.0); EXPECT_LT;
}
