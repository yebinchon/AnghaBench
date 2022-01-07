
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int,int,int ,int) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECTI8 (int) ;
 int EXPECT_OVERFLOW ;
 int VarUI8FromDec ;

__attribute__((used)) static void test_VarUI8FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarUI8FromDec);


  if (0)
  {
      CONVERT_DEC(VarUI8FromDec,0,0x80,0,1);
  }

  CONVERT_DEC(VarUI8FromDec,0,0,0,0); EXPECTI8(0);
  CONVERT_DEC(VarUI8FromDec,0,0,0,1); EXPECTI8(1);
  CONVERT_DEC(VarUI8FromDec,0,0,0,255); EXPECTI8(255);

  CONVERT_DEC(VarUI8FromDec,2,0x80,0,100); EXPECT_OVERFLOW;
  CONVERT_DEC(VarUI8FromDec,2,0,0,25500); EXPECTI8(255);
}
