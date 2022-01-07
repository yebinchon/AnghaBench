
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OLECHAR ;


 int CONVERT_STR (int ,char*,int ) ;
 int CONVVARS (int ) ;
 int EXPECTI8 (int) ;
 int EXPECT_MISMATCH ;
 int LANG_ENGLISH ;
 int LCID ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int VarI8FromStr ;
 int in ;

__attribute__((used)) static void test_VarI8FromStr(void)
{
  CONVVARS(LCID);
  OLECHAR buff[128];

  in = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  CONVERT_STR(VarI8FromStr,((void*)0),0); EXPECT_MISMATCH;
  CONVERT_STR(VarI8FromStr,"0",0); EXPECTI8(0);
  CONVERT_STR(VarI8FromStr,"-1",0); EXPECTI8(-1);
  CONVERT_STR(VarI8FromStr,"2147483647",0); EXPECTI8(2147483647);

  CONVERT_STR(VarI8FromStr,"-1.5",LOCALE_NOUSEROVERRIDE); EXPECTI8(-2);
  CONVERT_STR(VarI8FromStr,"-0.6",LOCALE_NOUSEROVERRIDE); EXPECTI8(-1);
  CONVERT_STR(VarI8FromStr,"-0.5",LOCALE_NOUSEROVERRIDE); EXPECTI8(0);
  CONVERT_STR(VarI8FromStr,"-0.4",LOCALE_NOUSEROVERRIDE); EXPECTI8(0);
  CONVERT_STR(VarI8FromStr,"0.4",LOCALE_NOUSEROVERRIDE); EXPECTI8(0);
  CONVERT_STR(VarI8FromStr,"0.5",LOCALE_NOUSEROVERRIDE); EXPECTI8(0);
  CONVERT_STR(VarI8FromStr,"0.6",LOCALE_NOUSEROVERRIDE); EXPECTI8(1);
  CONVERT_STR(VarI8FromStr,"1.5",LOCALE_NOUSEROVERRIDE); EXPECTI8(2);
}
