
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OLECHAR ;


 int CONVERT_STR (int ,char*,int ) ;
 int CONVVARS (int ) ;
 int EXPECT (int) ;
 int EXPECT_MISMATCH ;
 int EXPECT_OVERFLOW ;
 int LANG_ENGLISH ;
 int LCID ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int VarI1FromStr ;
 int in ;

__attribute__((used)) static void test_VarI1FromStr(void)
{
  CONVVARS(LCID);
  OLECHAR buff[128];

  in = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  CONVERT_STR(VarI1FromStr,((void*)0), 0); EXPECT_MISMATCH;
  CONVERT_STR(VarI1FromStr,"0", 0); EXPECT(0);
  CONVERT_STR(VarI1FromStr,"-129", 0); EXPECT_OVERFLOW;
  CONVERT_STR(VarI1FromStr,"-128", 0); EXPECT(-128);
  CONVERT_STR(VarI1FromStr,"127", 0); EXPECT(127);
  CONVERT_STR(VarI1FromStr,"128", 0); EXPECT_OVERFLOW;

  CONVERT_STR(VarI1FromStr,"-1.5", LOCALE_NOUSEROVERRIDE); EXPECT(-2);
  CONVERT_STR(VarI1FromStr,"-0.6", LOCALE_NOUSEROVERRIDE); EXPECT(-1);
  CONVERT_STR(VarI1FromStr,"-0.5", LOCALE_NOUSEROVERRIDE); EXPECT(0);
  CONVERT_STR(VarI1FromStr,"-0.4", LOCALE_NOUSEROVERRIDE); EXPECT(0);
  CONVERT_STR(VarI1FromStr,"0.4", LOCALE_NOUSEROVERRIDE); EXPECT(0);
  CONVERT_STR(VarI1FromStr,"0.5", LOCALE_NOUSEROVERRIDE); EXPECT(0);
  CONVERT_STR(VarI1FromStr,"0.6", LOCALE_NOUSEROVERRIDE); EXPECT(1);
  CONVERT_STR(VarI1FromStr,"1.5", LOCALE_NOUSEROVERRIDE); EXPECT(2);
}
