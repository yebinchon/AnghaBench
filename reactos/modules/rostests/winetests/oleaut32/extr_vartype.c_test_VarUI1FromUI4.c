
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int ULONG ;
 int VarUI1FromUI4 ;

__attribute__((used)) static void test_VarUI1FromUI4(void)
{
  CONVVARS(ULONG);
  int i;

  CONVERTRANGE(VarUI1FromUI4, 0, 256);
  CONVERT(VarUI1FromUI4, 256); EXPECT_OVERFLOW;
}
