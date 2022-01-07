
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,unsigned long) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int ULONG ;
 int VarI4FromUI4 ;

__attribute__((used)) static void test_VarI4FromUI4(void)
{
  CONVVARS(ULONG);

  CONVERT(VarI4FromUI4, 0); EXPECT(0);
  CONVERT(VarI4FromUI4, 1); EXPECT(1);
  CONVERT(VarI4FromUI4, 2147483647); EXPECT(2147483647);
  CONVERT(VarI4FromUI4, 2147483648ul); EXPECT_OVERFLOW;
}
