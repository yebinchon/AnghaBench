
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OLECHAR ;


 int CONVERT_STR (int ,char*,int ) ;
 int CONVVARS (int ) ;
 int EXPECT (float) ;
 int EXPECT_MISMATCH ;
 int LANG_ENGLISH ;
 int LCID ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int VarR4FromStr ;
 int in ;

__attribute__((used)) static void test_VarR4FromStr(void)
{
  CONVVARS(LCID);
  OLECHAR buff[128];

  in = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  CONVERT_STR(VarR4FromStr,((void*)0),0); EXPECT_MISMATCH;
  CONVERT_STR(VarR4FromStr,"-1", 0); EXPECT(-1.0f);
  CONVERT_STR(VarR4FromStr,"0", 0); EXPECT(0.0f);
  CONVERT_STR(VarR4FromStr,"1", 0); EXPECT(1.0f);

  CONVERT_STR(VarR4FromStr,"-1.5",LOCALE_NOUSEROVERRIDE); EXPECT(-1.5f);
  CONVERT_STR(VarR4FromStr,"-0.6",LOCALE_NOUSEROVERRIDE); EXPECT(-0.6f);
  CONVERT_STR(VarR4FromStr,"-0.5",LOCALE_NOUSEROVERRIDE); EXPECT(-0.5f);
  CONVERT_STR(VarR4FromStr,"-0.4",LOCALE_NOUSEROVERRIDE); EXPECT(-0.4f);
  CONVERT_STR(VarR4FromStr,"0.4",LOCALE_NOUSEROVERRIDE); EXPECT(0.4f);
  CONVERT_STR(VarR4FromStr,"0.5",LOCALE_NOUSEROVERRIDE); EXPECT(0.5f);
  CONVERT_STR(VarR4FromStr,"0.6",LOCALE_NOUSEROVERRIDE); EXPECT(0.6f);
  CONVERT_STR(VarR4FromStr,"1.5",LOCALE_NOUSEROVERRIDE); EXPECT(1.5f);
}
