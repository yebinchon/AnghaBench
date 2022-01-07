
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int,int,int ,int) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECTI8 (int) ;
 int VarI8FromDec ;

__attribute__((used)) static void test_VarI8FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarI8FromDec);

  CONVERT_DEC(VarI8FromDec,0,0x80,0,128); EXPECTI8(-128);
  CONVERT_DEC(VarI8FromDec,0,0x80,0,1); EXPECTI8(-1);
  CONVERT_DEC(VarI8FromDec,0,0,0,0); EXPECTI8(0);
  CONVERT_DEC(VarI8FromDec,0,0,0,1); EXPECTI8(1);
  CONVERT_DEC(VarI8FromDec,0,0,0,127); EXPECTI8(127);

  CONVERT_DEC(VarI8FromDec,2,0x80,0,12700); EXPECTI8(-127);
  CONVERT_DEC(VarI8FromDec,2,0,0,12700); EXPECTI8(127);
}
