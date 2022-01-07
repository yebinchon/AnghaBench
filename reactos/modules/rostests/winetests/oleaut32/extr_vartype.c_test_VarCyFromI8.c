
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,int) ;
 int CONVERT_I8 (int ,int,int) ;
 int CONVVARS (int ) ;
 int EXPECTCY (int) ;
 int EXPECTCY64 (unsigned long,unsigned long) ;
 int EXPECT_OVERFLOW ;
 int LONG64 ;
 int VarCyFromI8 ;

__attribute__((used)) static void test_VarCyFromI8(void)
{
  CONVVARS(LONG64);

  CONVERT_I8(VarCyFromI8, -214749, 2728163227ul); EXPECT_OVERFLOW;
  CONVERT_I8(VarCyFromI8, -214749, 2728163228ul); EXPECTCY64(2147483648ul,15808);
  CONVERT(VarCyFromI8, -1); EXPECTCY(-1);
  CONVERT(VarCyFromI8, 0); EXPECTCY(0);
  CONVERT(VarCyFromI8, 1); EXPECTCY(1);
  CONVERT_I8(VarCyFromI8, 214748, 1566804068); EXPECTCY64(2147483647ul, 4294951488ul);
  CONVERT_I8(VarCyFromI8, 214748, 1566804069); EXPECT_OVERFLOW;
}
