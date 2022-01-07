
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int LONG ;
 int OVERFLOWRANGE (int ,int,int ) ;
 int VarUI2FromI4 ;

__attribute__((used)) static void test_VarUI2FromI4(void)
{
  CONVVARS(LONG);
  int i;

  OVERFLOWRANGE(VarUI2FromI4, -32768, 0);
  CONVERT(VarUI2FromI4, 0); EXPECT(0);
  CONVERT(VarUI2FromI4, 65535); EXPECT(65535);
  CONVERT(VarUI2FromI4, 65536); EXPECT_OVERFLOW;
}
