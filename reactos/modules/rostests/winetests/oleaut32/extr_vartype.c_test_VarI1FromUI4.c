
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERTRANGE (int ,int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT_OVERFLOW ;
 int ULONG ;
 int VarI1FromUI4 ;

__attribute__((used)) static void test_VarI1FromUI4(void)
{
  CONVVARS(ULONG);
  int i;

  CONVERTRANGE(VarI1FromUI4, 0, 127);
  CONVERT(VarI1FromUI4, 128); EXPECT_OVERFLOW;
}
