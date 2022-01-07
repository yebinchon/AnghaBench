
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OLECHAR ;


 int CONVERT_STR (int ,char*,int ) ;
 int CONVVARS (int ) ;
 int EXPECT (double) ;
 int EXPECT_MISMATCH ;
 int LANG_ENGLISH ;
 int LCID ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int VarR8FromStr ;
 int in ;

__attribute__((used)) static void test_VarR8FromStr(void)
{
  CONVVARS(LCID);
  OLECHAR buff[128];

  in = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  CONVERT_STR(VarR8FromStr,((void*)0),0); EXPECT_MISMATCH;
  CONVERT_STR(VarR8FromStr,"",0); EXPECT_MISMATCH;
  CONVERT_STR(VarR8FromStr," ",0); EXPECT_MISMATCH;

  CONVERT_STR(VarR8FromStr,"0",LOCALE_NOUSEROVERRIDE); EXPECT(0.0);
  CONVERT_STR(VarR8FromStr,"-1.5",LOCALE_NOUSEROVERRIDE); EXPECT(-1.5);
  CONVERT_STR(VarR8FromStr,"-0.6",LOCALE_NOUSEROVERRIDE); EXPECT(-0.6);
  CONVERT_STR(VarR8FromStr,"-0.5",LOCALE_NOUSEROVERRIDE); EXPECT(-0.5);
  CONVERT_STR(VarR8FromStr,"-0.4",LOCALE_NOUSEROVERRIDE); EXPECT(-0.4);
  CONVERT_STR(VarR8FromStr,"0.4",LOCALE_NOUSEROVERRIDE); EXPECT(0.4);
  CONVERT_STR(VarR8FromStr,"0.5",LOCALE_NOUSEROVERRIDE); EXPECT(0.5);
  CONVERT_STR(VarR8FromStr,"0.6",LOCALE_NOUSEROVERRIDE); EXPECT(0.6);
  CONVERT_STR(VarR8FromStr,"1.5",LOCALE_NOUSEROVERRIDE); EXPECT(1.5);
  CONVERT_STR(VarR8FromStr,"1e-94938484",LOCALE_NOUSEROVERRIDE); EXPECT(0);


}
