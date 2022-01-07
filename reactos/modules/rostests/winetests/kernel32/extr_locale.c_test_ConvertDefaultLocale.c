
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCID ;


 int ConvertDefaultLocale (int) ;
 int GetSystemDefaultLCID () ;
 int GetUserDefaultLCID () ;
 int LANG_ENGLISH ;
 int LANG_INVARIANT ;
 int LANG_JAPANESE ;
 int LANG_SYSTEM_DEFAULT ;
 int LANG_USER_DEFAULT ;
 int LCID_RES (int ,int ) ;
 int LOCALE_INVARIANT ;
 int LOCALE_NEUTRAL ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LOCALE_USER_DEFAULT ;
 int MKLCID (int ,int ,int ) ;
 int SORT_DEFAULT ;
 int SORT_JAPANESE_UNICODE ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_ENGLISH_UK ;
 int SUBLANG_ENGLISH_US ;
 int SUBLANG_NEUTRAL ;
 int TEST_LCID (int ,int ,int ) ;
 int TEST_LCIDLANG (int ,int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void test_ConvertDefaultLocale(void)
{
  LCID lcid;


  TEST_LCID(LANG_ENGLISH, SUBLANG_ENGLISH_US, SORT_DEFAULT);
  TEST_LCID(LANG_ENGLISH, SUBLANG_ENGLISH_UK, SORT_DEFAULT);
  TEST_LCID(LANG_JAPANESE, SUBLANG_DEFAULT, SORT_DEFAULT);
  TEST_LCID(LANG_JAPANESE, SUBLANG_DEFAULT, SORT_JAPANESE_UNICODE);


  LCID_RES(MKLCID(LANG_ENGLISH, SUBLANG_NEUTRAL, SORT_DEFAULT),
           MKLCID(LANG_ENGLISH, SUBLANG_DEFAULT, SORT_DEFAULT));
  LCID_RES(MKLCID(LANG_JAPANESE, SUBLANG_NEUTRAL, SORT_DEFAULT),
           MKLCID(LANG_JAPANESE, SUBLANG_DEFAULT, SORT_DEFAULT));


  TEST_LCID(LANG_INVARIANT, SUBLANG_DEFAULT, SORT_DEFAULT);


  TEST_LCIDLANG(LANG_SYSTEM_DEFAULT, SORT_JAPANESE_UNICODE);
  TEST_LCIDLANG(LANG_USER_DEFAULT, SORT_JAPANESE_UNICODE);


  LCID_RES(LOCALE_SYSTEM_DEFAULT, GetSystemDefaultLCID());
  LCID_RES(LOCALE_USER_DEFAULT, GetUserDefaultLCID());
  LCID_RES(LOCALE_NEUTRAL, GetUserDefaultLCID());
  lcid = ConvertDefaultLocale(LOCALE_INVARIANT);
  ok(lcid == LOCALE_INVARIANT || broken(lcid == 0x47f) ,
     "Expected lcid = %08x, got %08x\n", LOCALE_INVARIANT, lcid);
}
