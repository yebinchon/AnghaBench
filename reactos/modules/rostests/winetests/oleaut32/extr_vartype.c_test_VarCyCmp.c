
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int CY ;


 int EXPECT_EQ ;
 int EXPECT_GT ;
 int EXPECT_LT ;
 int MATHCMP (double,double) ;

__attribute__((used)) static void test_VarCyCmp(void)
{
  HRESULT hres;
  double left = 0.0, right = 0.0;
  CY cyLeft, cyRight;

  MATHCMP(-1.0, -1.0); EXPECT_EQ;
  MATHCMP(-1.0, 0.0); EXPECT_LT;
  MATHCMP(-1.0, 1.0); EXPECT_LT;
  MATHCMP(-1.0, 2.0); EXPECT_LT;
  MATHCMP(0.0, 1.0); EXPECT_LT;
  MATHCMP(0.0, 0.0); EXPECT_EQ;
  MATHCMP(0.0, -1.0); EXPECT_GT;
  MATHCMP(1.0, -1.0); EXPECT_GT;
  MATHCMP(1.0, 0.0); EXPECT_GT;
  MATHCMP(1.0, 1.0); EXPECT_EQ;
  MATHCMP(1.0, 2.0); EXPECT_LT;
}
