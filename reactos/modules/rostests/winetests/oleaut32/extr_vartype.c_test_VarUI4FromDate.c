
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,double) ;
 int CONVVARS (int ) ;
 int DOUBLE ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI4FromDate ;

__attribute__((used)) static void test_VarUI4FromDate(void)
{
  CONVVARS(DOUBLE);

  CONVERT(VarUI4FromDate, -1.0); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromDate, 0.0); EXPECT(0);
  CONVERT(VarUI4FromDate, 1.0); EXPECT(1);
  CONVERT(VarUI4FromDate, 4294967295.0); EXPECT(4294967295ul);
  CONVERT(VarUI4FromDate, 4294967296.0); EXPECT_OVERFLOW;

  CONVERT(VarUI4FromDate, -1.5); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromDate, -0.6); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromDate, -0.5); EXPECT(0);
  CONVERT(VarUI4FromDate, -0.4); EXPECT(0);
  CONVERT(VarUI4FromDate, 0.4); EXPECT(0);
  CONVERT(VarUI4FromDate, 0.5); EXPECT(0);
  CONVERT(VarUI4FromDate, 0.6); EXPECT(1);
  CONVERT(VarUI4FromDate, 1.5); EXPECT(2);
}
