
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int ULONG64 ;
 int VarI2FromUI8 ;

__attribute__((used)) static void test_VarI2FromUI8(void)
{
  CONVVARS(ULONG64);
  int i;

  CONVERTRANGE(VarI2FromUI8, 0, 32768);
  CONVERT(VarI2FromUI8, 32768); EXPECT_OVERFLOW;
}
