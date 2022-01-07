
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarUI1FromI8 ;

__attribute__((used)) static void test_VarUI1FromI8(void)
{
  CONVVARS(LONG64);
  int i;

  CONVERT(VarUI1FromI8, -1); EXPECT_OVERFLOW;
  CONVERTRANGE(VarUI1FromI8, 0, 256);
  CONVERT(VarUI1FromI8, 256); EXPECT_OVERFLOW;
}
