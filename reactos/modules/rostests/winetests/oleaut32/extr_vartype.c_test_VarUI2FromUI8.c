
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int ULONG64 ;
 int VarUI2FromUI8 ;

__attribute__((used)) static void test_VarUI2FromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarUI2FromUI8, 0); EXPECT(0);
  CONVERT(VarUI2FromUI8, 65535); EXPECT(65535);
  CONVERT(VarUI2FromUI8, 65536); EXPECT_OVERFLOW;
}
