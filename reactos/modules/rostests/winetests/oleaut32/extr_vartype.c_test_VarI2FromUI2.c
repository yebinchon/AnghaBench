
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int USHORT ;
 int VarI2FromUI2 ;

__attribute__((used)) static void test_VarI2FromUI2(void)
{
  CONVVARS(USHORT);
  int i;

  CONVERTRANGE(VarI2FromUI2, 0, 32768);
  CONVERT(VarI2FromUI2, 32768); EXPECT_OVERFLOW;
}
