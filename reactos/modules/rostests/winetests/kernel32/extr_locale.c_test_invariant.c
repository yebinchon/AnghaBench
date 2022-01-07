
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant_entry {int id; char const* expect; char const* expect2; scalar_t__ name; } ;
typedef int buffer ;


 int BUFFER_SIZE ;
 int GetLastError () ;
 int GetLocaleInfoA (int ,int,char*,int) ;
 int GetSystemDefaultLCID () ;
 int GetThreadLocale () ;
 scalar_t__ LANGIDFROMLCID (int ) ;
 int LANG_ENGLISH ;
 int LOCALE_INVARIANT ;
 int LOCALE_SCOUNTRY ;
 int LOCALE_SLANGUAGE ;
 int LOCALE_SNAME ;
 int LOCALE_SSCRIPTS ;
 int LOCALE_SSORTNAME ;
 scalar_t__ MAKELANGID (int ,int ) ;
 int NUO ;
 int SUBLANG_ENGLISH_US ;
 struct invariant_entry* invariant_list ;
 int lstrlenA (char const*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int strcmp (char*,char const*) ;
 int strlen (char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_invariant(void)
{
  int ret;
  int len;
  char buffer[BUFFER_SIZE];
  const struct invariant_entry *ptr = invariant_list;

  if (!GetLocaleInfoA(LOCALE_INVARIANT, NUO|LOCALE_SLANGUAGE, buffer, sizeof(buffer)))
  {
      win_skip("GetLocaleInfoA(LOCALE_INVARIANT) not supported\n");
      return;
  }

  while (ptr->name)
  {
    ret = GetLocaleInfoA(LOCALE_INVARIANT, NUO|ptr->id, buffer, sizeof(buffer));
    if (!ret && (ptr->id == LOCALE_SNAME || ptr->id == LOCALE_SSCRIPTS))
        win_skip("not supported\n");
    else
    {
        len = strlen(ptr->expect)+1;
        ok(ret == len || (ptr->expect2 && ret == strlen(ptr->expect2)+1),
           "For id %d, expected ret == %d, got %d, error %d\n",
            ptr->id, len, ret, GetLastError());
        ok(!strcmp(buffer, ptr->expect) || (ptr->expect2 && !strcmp(buffer, ptr->expect2)),
           "For id %d, Expected %s, got '%s'\n",
            ptr->id, ptr->expect, buffer);
    }

    ptr++;
  }

 if ((LANGIDFROMLCID(GetSystemDefaultLCID()) != MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US)) ||
     (LANGIDFROMLCID(GetThreadLocale()) != MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US)))
  {
      skip("Non US-English locale\n");
  }
  else
  {

    static const char lang[] = "Invariant Language (Invariant Country)";
    static const char cntry[] = "Invariant Country";
    static const char sortm[] = "Math Alphanumerics";
    static const char sortd[] = "Default";

    ret = GetLocaleInfoA(LOCALE_INVARIANT, NUO|LOCALE_SLANGUAGE, buffer, sizeof(buffer));
    len = lstrlenA(lang) + 1;
    ok(ret == len, "Expected ret == %d, got %d, error %d\n", len, ret, GetLastError());
    ok(!strcmp(buffer, lang), "Expected %s, got '%s'\n", lang, buffer);

    ret = GetLocaleInfoA(LOCALE_INVARIANT, NUO|LOCALE_SCOUNTRY, buffer, sizeof(buffer));
    len = lstrlenA(cntry) + 1;
    ok(ret == len, "Expected ret == %d, got %d, error %d\n", len, ret, GetLastError());
    ok(!strcmp(buffer, cntry), "Expected %s, got '%s'\n", cntry, buffer);

    ret = GetLocaleInfoA(LOCALE_INVARIANT, NUO|LOCALE_SSORTNAME, buffer, sizeof(buffer));
    if (ret == lstrlenA(sortm)+1)
        ok(!strcmp(buffer, sortm), "Expected %s, got '%s'\n", sortm, buffer);
    else if (ret == lstrlenA(sortd)+1)
        ok(!strcmp(buffer, sortd), "Expected %s, got '%s'\n", sortd, buffer);
    else
        ok(0, "Expected ret == %d or %d, got %d, error %d\n",
            lstrlenA(sortm)+1, lstrlenA(sortd)+1, ret, GetLastError());
  }
}
