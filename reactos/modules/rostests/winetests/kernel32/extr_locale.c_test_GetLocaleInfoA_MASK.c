#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int LCID ;
typedef  int DWORD ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int FUNC0 (char*) ; 
 char* ERROR_INSUFFICIENT_BUFFER ; 
 char* FUNC1 () ; 
 int FUNC2 (int,int,char*,int) ; 
 int LANG_ARABIC ; 
 int LANG_ENGLISH ; 
 int LANG_GERMAN ; 
 int LOCALE_ILANGUAGE ; 
 int LOCALE_RETURN_NUMBER ; 
 int LOCALE_SDAYNAME1 ; 
 int LOCALE_SLANGUAGE ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int NUO ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
  int ret;
  int len;
  LCID lcid = FUNC4(FUNC3(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);
  char buffer[BUFFER_SIZE];
  char expected[BUFFER_SIZE];
  DWORD val;

  FUNC8(lcid == 0x409, "wrong LCID calculated - %d\n", lcid);

  ret = FUNC2(lcid, LOCALE_ILANGUAGE|LOCALE_RETURN_NUMBER, (char*)&val, sizeof(val));
  FUNC8(ret, "got %d\n", ret);
  FUNC8(val == lcid, "got 0x%08x\n", val);

  /* en and ar use SUBLANG_NEUTRAL, but GetLocaleInfo assume SUBLANG_DEFAULT
     Same is true for zh on pre-Vista, but on Vista and higher GetLocaleInfo
     assumes SUBLANG_NEUTRAL for zh */
  FUNC7(expected, 0, FUNC0(expected));
  len = FUNC2(FUNC3(LANG_ENGLISH, SUBLANG_DEFAULT), LOCALE_SLANGUAGE, expected, FUNC0(expected));
  FUNC5(0xdeadbeef);
  FUNC7(buffer, 0, FUNC0(buffer));
  ret = FUNC2(LANG_ENGLISH, LOCALE_SLANGUAGE, buffer, FUNC0(buffer));
  FUNC8((ret == len) && !FUNC6(buffer, expected),
      "got %d with '%s' (expected %d with '%s')\n",
      ret, buffer, len, expected);

  FUNC7(expected, 0, FUNC0(expected));
  len = FUNC2(FUNC3(LANG_ARABIC, SUBLANG_DEFAULT), LOCALE_SLANGUAGE, expected, FUNC0(expected));
  if (len) {
      FUNC5(0xdeadbeef);
      FUNC7(buffer, 0, FUNC0(buffer));
      ret = FUNC2(LANG_ARABIC, LOCALE_SLANGUAGE, buffer, FUNC0(buffer));
      FUNC8((ret == len) && !FUNC6(buffer, expected),
          "got %d with '%s' (expected %d with '%s')\n",
          ret, buffer, len, expected);
  }
  else
      FUNC10("LANG_ARABIC not installed\n");

  /* SUBLANG_DEFAULT is required for mlang.dll, but optional for GetLocaleInfo */
  FUNC7(expected, 0, FUNC0(expected));
  len = FUNC2(FUNC3(LANG_GERMAN, SUBLANG_DEFAULT), LOCALE_SLANGUAGE, expected, FUNC0(expected));
  FUNC5(0xdeadbeef);
  FUNC7(buffer, 0, FUNC0(buffer));
  ret = FUNC2(LANG_GERMAN, LOCALE_SLANGUAGE, buffer, FUNC0(buffer));
  FUNC8((ret == len) && !FUNC6(buffer, expected),
      "got %d with '%s' (expected %d with '%s')\n",
      ret, buffer, len, expected);


  /* HTMLKit and "Font xplorer lite" expect GetLocaleInfoA to
   * partially fill the buffer even if it is too short. See bug 637.
   */
  FUNC5(0xdeadbeef);
  FUNC7(buffer, 0, FUNC0(buffer));
  ret = FUNC2(lcid, NUO|LOCALE_SDAYNAME1, buffer, 0);
  FUNC8(ret == 7 && !buffer[0], "Expected len=7, got %d\n", ret);

  FUNC5(0xdeadbeef);
  FUNC7(buffer, 0, FUNC0(buffer));
  ret = FUNC2(lcid, NUO|LOCALE_SDAYNAME1, buffer, 3);
  FUNC8( !ret && FUNC1() == ERROR_INSUFFICIENT_BUFFER,
      "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC1());
  FUNC8(!FUNC9(buffer, "Mon"), "Expected 'Mon', got '%s'\n", buffer);

  FUNC5(0xdeadbeef);
  FUNC7(buffer, 0, FUNC0(buffer));
  ret = FUNC2(lcid, NUO|LOCALE_SDAYNAME1, buffer, 10);
  FUNC8(ret == 7, "Expected ret == 7, got %d, error %d\n", ret, FUNC1());
  FUNC8(!FUNC9(buffer, "Monday"), "Expected 'Monday', got '%s'\n", buffer);
}