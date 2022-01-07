
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int DATE_MAX ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int ULONG64 ;
 int VarDateFromUI8 ;

__attribute__((used)) static void test_VarDateFromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarDateFromUI8, 0); EXPECT(0.0);
  CONVERT(VarDateFromUI8, 1); EXPECT(1.0);
  CONVERT(VarDateFromUI8, DATE_MAX); EXPECT(DATE_MAX);
  CONVERT(VarDateFromUI8, DATE_MAX+1); EXPECT_OVERFLOW;
}
