
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OLECHAR ;


 int CONVERT_STR (int ,char*,int ) ;
 int CONVVARS (int ) ;
 int EXPECTDEC (int,int,int,int) ;
 int EXPECTDEC64 (int ,int ,int ,int,int ) ;
 int EXPECT_MISMATCH ;
 int LANG_ENGLISH ;
 int LCID ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int VarDecFromStr ;
 int in ;

__attribute__((used)) static void test_VarDecFromStr(void)
{
  CONVVARS(LCID);
  OLECHAR buff[128];

  in = MAKELCID(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);

  CONVERT_STR(VarDecFromStr,((void*)0),0); EXPECT_MISMATCH;
  CONVERT_STR(VarDecFromStr,"-1", LOCALE_NOUSEROVERRIDE); EXPECTDEC(0,0x80,0,1);
  CONVERT_STR(VarDecFromStr,"0", LOCALE_NOUSEROVERRIDE); EXPECTDEC(0,0,0,0);
  CONVERT_STR(VarDecFromStr,"1", LOCALE_NOUSEROVERRIDE); EXPECTDEC(0,0,0,1);
  CONVERT_STR(VarDecFromStr,"0.5", LOCALE_NOUSEROVERRIDE); EXPECTDEC(1,0,0,5);
  CONVERT_STR(VarDecFromStr,"4294967296", LOCALE_NOUSEROVERRIDE); EXPECTDEC64(0,0,0,1,0);
  CONVERT_STR(VarDecFromStr,"18446744073709551616", LOCALE_NOUSEROVERRIDE); EXPECTDEC(0,0,1,0);
  CONVERT_STR(VarDecFromStr,"4294967296.0", LOCALE_NOUSEROVERRIDE); EXPECTDEC64(0,0,0,1,0);
  CONVERT_STR(VarDecFromStr,"18446744073709551616.0", LOCALE_NOUSEROVERRIDE); EXPECTDEC(0,0,1,0);
}
