
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int,int,int,int) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECT (float) ;
 int VarR4FromDec ;

__attribute__((used)) static void test_VarR4FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarR4FromDec);

  CONVERT_DEC(VarR4FromDec,0,0x80,0,32768); EXPECT(-32768.0f);
  CONVERT_DEC(VarR4FromDec,0,0x80,0,1); EXPECT(-1.0f);
  CONVERT_DEC(VarR4FromDec,0,0,0,0); EXPECT(0.0f);
  CONVERT_DEC(VarR4FromDec,0,0,0,1); EXPECT(1.0f);
  CONVERT_DEC(VarR4FromDec,0,0,0,32767); EXPECT(32767.0f);

  CONVERT_DEC(VarR4FromDec,2,0x80,0,3276800); EXPECT(-32768.0f);
  CONVERT_DEC(VarR4FromDec,2,0,0,3276700); EXPECT(32767.0f);
  CONVERT_DEC(VarR4FromDec,10,0,0,3276700); EXPECT(0.00032767f);

  CONVERT_DEC(VarR4FromDec,0,0,1,0); EXPECT(18446744073709551616.0f);
}
