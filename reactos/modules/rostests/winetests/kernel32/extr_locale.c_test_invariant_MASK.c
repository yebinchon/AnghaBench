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
struct invariant_entry {int id; char const* expect; char const* expect2; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LOCALE_INVARIANT ; 
 int LOCALE_SCOUNTRY ; 
 int LOCALE_SLANGUAGE ; 
 int LOCALE_SNAME ; 
 int LOCALE_SSCRIPTS ; 
 int LOCALE_SSORTNAME ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUO ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 struct invariant_entry* invariant_list ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
  int ret;
  int len;
  char buffer[BUFFER_SIZE];
  const struct invariant_entry *ptr = invariant_list;

  if (!FUNC1(LOCALE_INVARIANT, NUO|LOCALE_SLANGUAGE, buffer, sizeof(buffer)))
  {
      FUNC11("GetLocaleInfoA(LOCALE_INVARIANT) not supported\n"); /* win2k */
      return;
  }

  while (ptr->name)
  {
    ret = FUNC1(LOCALE_INVARIANT, NUO|ptr->id, buffer, sizeof(buffer));
    if (!ret && (ptr->id == LOCALE_SNAME || ptr->id == LOCALE_SSCRIPTS))
        FUNC11("not supported\n"); /* winxp/win2k3 */
    else
    {
        len = FUNC10(ptr->expect)+1; /* include \0 */
        FUNC7(ret == len || (ptr->expect2 && ret == FUNC10(ptr->expect2)+1),
           "For id %d, expected ret == %d, got %d, error %d\n",
            ptr->id, len, ret, FUNC0());
        FUNC7(!FUNC9(buffer, ptr->expect) || (ptr->expect2 && !FUNC9(buffer, ptr->expect2)),
           "For id %d, Expected %s, got '%s'\n",
            ptr->id, ptr->expect, buffer);
    }

    ptr++;
  }

 if ((FUNC4(FUNC2()) != FUNC5(LANG_ENGLISH, SUBLANG_ENGLISH_US)) ||
     (FUNC4(FUNC3()) != FUNC5(LANG_ENGLISH, SUBLANG_ENGLISH_US)))
  {
      FUNC8("Non US-English locale\n");
  }
  else
  {
    /* some locales translate these */
    static const char lang[]  = "Invariant Language (Invariant Country)";
    static const char cntry[] = "Invariant Country";
    static const char sortm[] = "Math Alphanumerics";
    static const char sortd[] = "Default"; /* win2k3 */

    ret = FUNC1(LOCALE_INVARIANT, NUO|LOCALE_SLANGUAGE, buffer, sizeof(buffer));
    len = FUNC6(lang) + 1;
    FUNC7(ret == len, "Expected ret == %d, got %d, error %d\n", len, ret, FUNC0());
    FUNC7(!FUNC9(buffer, lang), "Expected %s, got '%s'\n", lang, buffer);

    ret = FUNC1(LOCALE_INVARIANT, NUO|LOCALE_SCOUNTRY, buffer, sizeof(buffer));
    len = FUNC6(cntry) + 1;
    FUNC7(ret == len, "Expected ret == %d, got %d, error %d\n", len, ret, FUNC0());
    FUNC7(!FUNC9(buffer, cntry), "Expected %s, got '%s'\n", cntry, buffer);

    ret = FUNC1(LOCALE_INVARIANT, NUO|LOCALE_SSORTNAME, buffer, sizeof(buffer));
    if (ret == FUNC6(sortm)+1)
        FUNC7(!FUNC9(buffer, sortm), "Expected %s, got '%s'\n", sortm, buffer);
    else if (ret == FUNC6(sortd)+1) /* win2k3 */
        FUNC7(!FUNC9(buffer, sortd), "Expected %s, got '%s'\n", sortd, buffer);
    else
        FUNC7(0, "Expected ret == %d or %d, got %d, error %d\n",
            FUNC6(sortm)+1, FUNC6(sortd)+1, ret, FUNC0());
  }
}