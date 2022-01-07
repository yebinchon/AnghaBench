
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int LONG ;
 int VarI1FromI4 ;

__attribute__((used)) static void test_VarI1FromI4(void)
{
  CONVVARS(LONG);
  int i;

  CONVERT(VarI1FromI4, -129); EXPECT_OVERFLOW;
  CONVERTRANGE(VarI1FromI4, -128, 128);
  CONVERT(VarI1FromI4, 128); EXPECT_OVERFLOW;
}
