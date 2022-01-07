
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int ,int,int ,int) ;
 int CONVERT_DEC64 (int ,int,int ,int ,int,unsigned long) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECT (unsigned long) ;
 int EXPECT_OVERFLOW ;
 int VarUI4FromDec ;

__attribute__((used)) static void test_VarUI4FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarUI4FromDec);

  CONVERT_DEC(VarUI4FromDec,0,0x80,0,1); EXPECT_OVERFLOW;
  CONVERT_DEC(VarUI4FromDec,0,0,0,0); EXPECT(0);
  CONVERT_DEC(VarUI4FromDec,0,0,0,1); EXPECT(1);
  CONVERT_DEC64(VarUI4FromDec,0,0,0,0,4294967295ul); EXPECT(4294967295ul);
  CONVERT_DEC64(VarUI4FromDec,0,0,0,1,0); EXPECT_OVERFLOW;

  CONVERT_DEC64(VarUI4FromDec,2,0,0,99,4294967196ul); EXPECT(4294967295ul);
  CONVERT_DEC64(VarUI4FromDec,2,0,0,100,0); EXPECT_OVERFLOW;
}
