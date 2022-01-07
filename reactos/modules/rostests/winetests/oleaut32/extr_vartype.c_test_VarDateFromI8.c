
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int DATE_MAX ;
 int DATE_MIN ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarDateFromI8 ;

__attribute__((used)) static void test_VarDateFromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarDateFromI8, DATE_MIN-1); EXPECT_OVERFLOW;
  CONVERT(VarDateFromI8, DATE_MIN); EXPECT(DATE_MIN);
  CONVERT(VarDateFromI8, -1); EXPECT(-1.0);
  CONVERT(VarDateFromI8, 0); EXPECT(0.0);
  CONVERT(VarDateFromI8, 1); EXPECT(1.0);
  CONVERT(VarDateFromI8, DATE_MAX); EXPECT(DATE_MAX);
  CONVERT(VarDateFromI8, DATE_MAX+1); EXPECT_OVERFLOW;
}
