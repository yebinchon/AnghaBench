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
typedef  int LCID ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_INVARIANT ; 
 int /*<<< orphan*/  LANG_JAPANESE ; 
 int /*<<< orphan*/  LANG_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  LANG_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LOCALE_INVARIANT ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SORT_JAPANESE_UNICODE ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_UK ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int) ; 

__attribute__((used)) static void FUNC9(void)
{
  LCID lcid;

  /* Doesn't change lcid, even if non default sublang/sort used */
  FUNC5(LANG_ENGLISH,  SUBLANG_ENGLISH_US, SORT_DEFAULT);
  FUNC5(LANG_ENGLISH,  SUBLANG_ENGLISH_UK, SORT_DEFAULT);
  FUNC5(LANG_JAPANESE, SUBLANG_DEFAULT,    SORT_DEFAULT);
  FUNC5(LANG_JAPANESE, SUBLANG_DEFAULT,    SORT_JAPANESE_UNICODE);

  /* SUBLANG_NEUTRAL -> SUBLANG_DEFAULT */
  FUNC3(FUNC4(LANG_ENGLISH,  SUBLANG_NEUTRAL, SORT_DEFAULT),
           FUNC4(LANG_ENGLISH,  SUBLANG_DEFAULT, SORT_DEFAULT));
  FUNC3(FUNC4(LANG_JAPANESE, SUBLANG_NEUTRAL, SORT_DEFAULT),
           FUNC4(LANG_JAPANESE, SUBLANG_DEFAULT, SORT_DEFAULT));

  /* Invariant language is not treated specially */
  FUNC5(LANG_INVARIANT, SUBLANG_DEFAULT, SORT_DEFAULT);

  /* User/system default languages alone are not mapped */
  FUNC6(LANG_SYSTEM_DEFAULT, SORT_JAPANESE_UNICODE);
  FUNC6(LANG_USER_DEFAULT,   SORT_JAPANESE_UNICODE);

  /* Default lcids */
  FUNC3(LOCALE_SYSTEM_DEFAULT, FUNC1());
  FUNC3(LOCALE_USER_DEFAULT,   FUNC2());
  FUNC3(LOCALE_NEUTRAL,        FUNC2());
  lcid = FUNC0(LOCALE_INVARIANT);
  FUNC8(lcid == LOCALE_INVARIANT || FUNC7(lcid == 0x47f) /* win2k[3]/winxp */,
     "Expected lcid = %08x, got %08x\n", LOCALE_INVARIANT, lcid);
}