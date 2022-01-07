
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int,int,int ,int) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI2FromDec ;

__attribute__((used)) static void test_VarUI2FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarUI2FromDec);

  CONVERT_DEC(VarUI2FromDec,0,0x80,0,1); EXPECT_OVERFLOW;
  CONVERT_DEC(VarUI2FromDec,0,0,0,0); EXPECT(0);
  CONVERT_DEC(VarUI2FromDec,0,0,0,1); EXPECT(1);
  CONVERT_DEC(VarUI2FromDec,0,0,0,65535); EXPECT(65535);
  CONVERT_DEC(VarUI2FromDec,0,0,0,65536); EXPECT_OVERFLOW;

  CONVERT_DEC(VarUI2FromDec,2,0x80,0,100); EXPECT_OVERFLOW;
  CONVERT_DEC(VarUI2FromDec,2,0,0,6553500); EXPECT(65535);
  CONVERT_DEC(VarUI2FromDec,2,0,0,6553600); EXPECT_OVERFLOW;
}
