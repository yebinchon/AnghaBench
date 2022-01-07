
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int LONG ;
 int VarUI1FromI4 ;

__attribute__((used)) static void test_VarUI1FromI4(void)
{
  CONVVARS(LONG);
  int i;

  CONVERT(VarUI1FromI4, -1); EXPECT_OVERFLOW;
  CONVERTRANGE(VarUI1FromI4, 0, 256);
  CONVERT(VarUI1FromI4, 256); EXPECT_OVERFLOW;
}
