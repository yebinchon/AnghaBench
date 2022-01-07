
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int EXPECT (int) ;
 int EXPECT_INVALID ;
 int MATHRND (double,int) ;

__attribute__((used)) static void test_VarR8Round(void)
{
  HRESULT hres;
  double left = 0.0, out;
  int right;

  MATHRND(0.5432, 5); EXPECT(0.5432);
  MATHRND(0.5432, 4); EXPECT(0.5432);
  MATHRND(0.5432, 3); EXPECT(0.543);
  MATHRND(0.5432, 2); EXPECT(0.54);
  MATHRND(0.5432, 1); EXPECT(0.5);
  MATHRND(0.5532, 0); EXPECT(1);
  MATHRND(0.5532, -1); EXPECT_INVALID;

  MATHRND(0.5568, 5); EXPECT(0.5568);
  MATHRND(0.5568, 4); EXPECT(0.5568);
  MATHRND(0.5568, 3); EXPECT(0.557);
  MATHRND(0.5568, 2); EXPECT(0.56);
  MATHRND(0.5568, 1); EXPECT(0.6);
  MATHRND(0.5568, 0); EXPECT(1);
  MATHRND(0.5568, -1); EXPECT_INVALID;

  MATHRND(0.4999, 0); EXPECT(0);
  MATHRND(0.5000, 0); EXPECT(0);
  MATHRND(0.5001, 0); EXPECT(1);
  MATHRND(1.4999, 0); EXPECT(1);
  MATHRND(1.5000, 0); EXPECT(2);
  MATHRND(1.5001, 0); EXPECT(2);
}
