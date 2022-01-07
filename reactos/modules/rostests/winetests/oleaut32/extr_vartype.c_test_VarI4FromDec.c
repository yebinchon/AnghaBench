
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT_BADDEC (int ) ;
 int CONVERT_DEC (int ,int ,int,int ,int) ;
 int CONVERT_DEC64 (int ,int,int,int ,int,unsigned long) ;
 int CONVVARS (int ) ;
 int DECIMAL ;
 int EXPECT (int) ;
 int EXPECT_OVERFLOW ;
 int VarI4FromDec ;

__attribute__((used)) static void test_VarI4FromDec(void)
{
  CONVVARS(DECIMAL);

  CONVERT_BADDEC(VarI4FromDec);

  CONVERT_DEC(VarI4FromDec,0,0x80,0,1); EXPECT(-1);
  CONVERT_DEC(VarI4FromDec,0,0,0,0); EXPECT(0);
  CONVERT_DEC(VarI4FromDec,0,0,0,1); EXPECT(1);

  CONVERT_DEC64(VarI4FromDec,0,0x80,0,0,2147483649ul); EXPECT_OVERFLOW;
  CONVERT_DEC64(VarI4FromDec,0,0x80,0,0,2147483648ul); EXPECT(-2147483647 - 1);
  CONVERT_DEC64(VarI4FromDec,0,0,0,0,2147483647ul); EXPECT(2147483647ul);
  CONVERT_DEC64(VarI4FromDec,0,0,0,0,2147483648ul); EXPECT_OVERFLOW;

  CONVERT_DEC64(VarI4FromDec,2,0x80,0,50,100); EXPECT_OVERFLOW;
  CONVERT_DEC64(VarI4FromDec,2,0x80,0,50,0); EXPECT(-2147483647 - 1);
  CONVERT_DEC64(VarI4FromDec,2,0,0,49,4294967196ul); EXPECT(2147483647);
  CONVERT_DEC64(VarI4FromDec,2,0,0,50,0); EXPECT_OVERFLOW;
}
