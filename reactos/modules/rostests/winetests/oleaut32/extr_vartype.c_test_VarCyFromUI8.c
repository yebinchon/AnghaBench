
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
 int ULONG64 ;
 int VarCyFromUI8 ;

__attribute__((used)) static void test_VarCyFromUI8(void)
{
  CONVVARS(ULONG64);

  CONVERT(VarCyFromUI8, 0); EXPECTCY(0);
  CONVERT(VarCyFromUI8, 1); EXPECTCY(1);
  CONVERT_I8(VarCyFromUI8, 214748, 1566804068); EXPECTCY64(2147483647ul, 4294951488ul);
  CONVERT_I8(VarCyFromUI8, 214748, 1566804069); EXPECTCY64(2147483647ul, 4294961488ul);
  CONVERT_I8(VarCyFromUI8, 214748, 1566804070); EXPECT_OVERFLOW;
  CONVERT_I8(VarCyFromUI8, 214749, 1566804068); EXPECT_OVERFLOW;
}
