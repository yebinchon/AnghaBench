
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int LONG ;
 int VarI2FromI4 ;

__attribute__((used)) static void test_VarI2FromI4(void)
{
  CONVVARS(LONG);
  int i;

  CONVERT(VarI2FromI4, -32769); EXPECT_OVERFLOW;
  CONVERTRANGE(VarI2FromI4, -32768, 32768);
  CONVERT(VarI2FromI4, 32768); EXPECT_OVERFLOW;
}
