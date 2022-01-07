
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
 int VarI1FromDec ;

__attribute__((used)) static void test_VarI1FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarI1FromDec);

  CONVERT_DEC(VarI1FromDec,0,0x80,0,129); EXPECT_OVERFLOW;
  CONVERT_DEC(VarI1FromDec,0,0x80,0,128); EXPECT(-128);
  CONVERT_DEC(VarI1FromDec,0,0x80,0,1); EXPECT(-1);
  CONVERT_DEC(VarI1FromDec,0,0,0,0); EXPECT(0);
  CONVERT_DEC(VarI1FromDec,0,0,0,1); EXPECT(1);
  CONVERT_DEC(VarI1FromDec,0,0,0,127); EXPECT(127);
  CONVERT_DEC(VarI1FromDec,0,0,0,128); EXPECT_OVERFLOW;

  CONVERT_DEC(VarI1FromDec,2,0x80,0,12800); EXPECT(-128);
  CONVERT_DEC(VarI1FromDec,2,0,0,12700); EXPECT(127);
}
