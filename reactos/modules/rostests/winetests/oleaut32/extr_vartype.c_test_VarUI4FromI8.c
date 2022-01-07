
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,unsigned long) ;
 int CONVERT_I8 (int ,int,int ) ;
 int CONVVARS (int ) ;
 int EXPECT (unsigned long) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarUI4FromI8 ;

__attribute__((used)) static void test_VarUI4FromI8(void)
{
  CONVVARS(LONG64);

  CONVERT(VarUI4FromI8, -1); EXPECT_OVERFLOW;
  CONVERT(VarUI4FromI8, 0); EXPECT(0);
  CONVERT(VarUI4FromI8, 1); EXPECT(1);
  CONVERT(VarUI4FromI8, 4294967295ul); EXPECT(4294967295ul);
  CONVERT_I8(VarUI4FromI8, 1, 0); EXPECT_OVERFLOW;
}
