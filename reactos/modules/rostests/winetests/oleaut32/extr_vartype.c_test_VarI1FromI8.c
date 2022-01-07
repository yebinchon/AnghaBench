
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarI1FromI8 ;

__attribute__((used)) static void test_VarI1FromI8(void)
{
  CONVVARS(LONG64);
  int i;

  CONVERT(VarI1FromI8, -129); EXPECT_OVERFLOW;
  CONVERTRANGE(VarI1FromI8, -127, 128);
  CONVERT(VarI1FromI8, 128); EXPECT_OVERFLOW;
}
