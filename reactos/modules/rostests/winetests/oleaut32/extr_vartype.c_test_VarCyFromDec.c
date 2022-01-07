
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int,int,int ,int) ;
 int CONVERT_DEC64 (int ,int ,int ,int ,int,int) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECTCY (int) ;
 int EXPECTCY64 (unsigned long,unsigned long) ;
 int EXPECT_OVERFLOW ;
 int VarCyFromDec ;

__attribute__((used)) static void test_VarCyFromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarCyFromDec);

  CONVERT_DEC(VarCyFromDec,0,0x80,0,1); EXPECTCY(-1);
  CONVERT_DEC(VarCyFromDec,0,0,0,0); EXPECTCY(0);
  CONVERT_DEC(VarCyFromDec,0,0,0,1); EXPECTCY(1);

  CONVERT_DEC64(VarCyFromDec,0,0,0,214748, 1566804068); EXPECTCY64(2147483647ul, 4294951488ul);
  CONVERT_DEC64(VarCyFromDec,0,0,0,214748, 1566804069); EXPECTCY64(2147483647ul, 4294961488ul);
  CONVERT_DEC64(VarCyFromDec,0,0,0,214748, 1566804070); EXPECT_OVERFLOW;
  CONVERT_DEC64(VarCyFromDec,0,0,0,214749, 1566804068); EXPECT_OVERFLOW;

  CONVERT_DEC(VarCyFromDec,2,0,0,100); EXPECTCY(1);
  CONVERT_DEC(VarCyFromDec,2,0x80,0,100); EXPECTCY(-1);
  CONVERT_DEC(VarCyFromDec,2,0x80,0,1); EXPECTCY(-0.01);
  CONVERT_DEC(VarCyFromDec,2,0,0,1); EXPECTCY(0.01);
  CONVERT_DEC(VarCyFromDec,2,0x80,0,1); EXPECTCY(-0.01);
  CONVERT_DEC(VarCyFromDec,2,0,0,999); EXPECTCY(9.99);
  CONVERT_DEC(VarCyFromDec,2,0x80,0,999); EXPECTCY(-9.99);
  CONVERT_DEC(VarCyFromDec,2,0,0,1500); EXPECTCY(15);
  CONVERT_DEC(VarCyFromDec,2,0x80,0,1500); EXPECTCY(-15);
}
