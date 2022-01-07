
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int LCID ;
typedef int DWORD ;


 int BUFFER_SIZE ;
 int COUNTOF (char*) ;
 char* ERROR_INSUFFICIENT_BUFFER ;
 char* GetLastError () ;
 int GetLocaleInfoA (int,int,char*,int) ;
 int LANG_ARABIC ;
 int LANG_ENGLISH ;
 int LANG_GERMAN ;
 int LOCALE_ILANGUAGE ;
 int LOCALE_RETURN_NUMBER ;
 int LOCALE_SDAYNAME1 ;
 int LOCALE_SLANGUAGE ;
 int MAKELANGID (int,int ) ;
 int MAKELCID (int,int ) ;
 int NUO ;
 int SORT_DEFAULT ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int SetLastError (int) ;
 int lstrcmpA (char*,char*) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetLocaleInfoA(void)
{
  int ret;
  int len;
  LCID lcid = MAKELCID(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);
  char buffer[BUFFER_SIZE];
  char expected[BUFFER_SIZE];
  DWORD val;

  ok(lcid == 0x409, "wrong LCID calculated - %d\n", lcid);

  ret = GetLocaleInfoA(lcid, LOCALE_ILANGUAGE|LOCALE_RETURN_NUMBER, (char*)&val, sizeof(val));
  ok(ret, "got %d\n", ret);
  ok(val == lcid, "got 0x%08x\n", val);




  memset(expected, 0, COUNTOF(expected));
  len = GetLocaleInfoA(MAKELANGID(LANG_ENGLISH, SUBLANG_DEFAULT), LOCALE_SLANGUAGE, expected, COUNTOF(expected));
  SetLastError(0xdeadbeef);
  memset(buffer, 0, COUNTOF(buffer));
  ret = GetLocaleInfoA(LANG_ENGLISH, LOCALE_SLANGUAGE, buffer, COUNTOF(buffer));
  ok((ret == len) && !lstrcmpA(buffer, expected),
      "got %d with '%s' (expected %d with '%s')\n",
      ret, buffer, len, expected);

  memset(expected, 0, COUNTOF(expected));
  len = GetLocaleInfoA(MAKELANGID(LANG_ARABIC, SUBLANG_DEFAULT), LOCALE_SLANGUAGE, expected, COUNTOF(expected));
  if (len) {
      SetLastError(0xdeadbeef);
      memset(buffer, 0, COUNTOF(buffer));
      ret = GetLocaleInfoA(LANG_ARABIC, LOCALE_SLANGUAGE, buffer, COUNTOF(buffer));
      ok((ret == len) && !lstrcmpA(buffer, expected),
          "got %d with '%s' (expected %d with '%s')\n",
          ret, buffer, len, expected);
  }
  else
      win_skip("LANG_ARABIC not installed\n");


  memset(expected, 0, COUNTOF(expected));
  len = GetLocaleInfoA(MAKELANGID(LANG_GERMAN, SUBLANG_DEFAULT), LOCALE_SLANGUAGE, expected, COUNTOF(expected));
  SetLastError(0xdeadbeef);
  memset(buffer, 0, COUNTOF(buffer));
  ret = GetLocaleInfoA(LANG_GERMAN, LOCALE_SLANGUAGE, buffer, COUNTOF(buffer));
  ok((ret == len) && !lstrcmpA(buffer, expected),
      "got %d with '%s' (expected %d with '%s')\n",
      ret, buffer, len, expected);





  SetLastError(0xdeadbeef);
  memset(buffer, 0, COUNTOF(buffer));
  ret = GetLocaleInfoA(lcid, NUO|LOCALE_SDAYNAME1, buffer, 0);
  ok(ret == 7 && !buffer[0], "Expected len=7, got %d\n", ret);

  SetLastError(0xdeadbeef);
  memset(buffer, 0, COUNTOF(buffer));
  ret = GetLocaleInfoA(lcid, NUO|LOCALE_SDAYNAME1, buffer, 3);
  ok( !ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER,
      "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
  ok(!strcmp(buffer, "Mon"), "Expected 'Mon', got '%s'\n", buffer);

  SetLastError(0xdeadbeef);
  memset(buffer, 0, COUNTOF(buffer));
  ret = GetLocaleInfoA(lcid, NUO|LOCALE_SDAYNAME1, buffer, 10);
  ok(ret == 7, "Expected ret == 7, got %d, error %d\n", ret, GetLastError());
  ok(!strcmp(buffer, "Monday"), "Expected 'Monday', got '%s'\n", buffer);
}
