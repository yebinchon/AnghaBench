
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int ULONG64 ;
 int VarUI1FromUI8 ;

__attribute__((used)) static void test_VarUI1FromUI8(void)
{
  CONVVARS(ULONG64);
  int i;

  CONVERTRANGE(VarUI1FromUI8, 0, 256);
  CONVERT(VarUI1FromUI8, 256); EXPECT_OVERFLOW;
}
