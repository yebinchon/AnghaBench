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
typedef  int /*<<< orphan*/  _Locale_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  _Locale_ALPHA ; 
 int /*<<< orphan*/  _Locale_CNTRL ; 
 int /*<<< orphan*/  _Locale_DIGIT ; 
 int /*<<< orphan*/  _Locale_LOWER ; 
 int /*<<< orphan*/  _Locale_PRINT ; 
 int /*<<< orphan*/  _Locale_PUNCT ; 
 int /*<<< orphan*/  _Locale_SPACE ; 
 int /*<<< orphan*/  _Locale_UPPER ; 
 int /*<<< orphan*/  _Locale_XDIGIT ; 
 int /*<<< orphan*/ * ctable ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 
 scalar_t__ FUNC7 (char) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC10(void) {
  /* Ctype table for the ASCII character set. */
  char c;
  /* We might never reach 128 when char is signed. */
  for (c = 0; /* c != 128 */; ++c) {
    if (FUNC0(c)) ctable[(unsigned char)c] |= _Locale_ALPHA;
    if (FUNC1(c)) ctable[(unsigned char)c] |= _Locale_CNTRL;
    if (FUNC2(c)) ctable[(unsigned char)c] |= _Locale_DIGIT;
    if (FUNC4(c)) ctable[(unsigned char)c] |= _Locale_PRINT;
    if (FUNC5(c)) ctable[(unsigned char)c] |= _Locale_PUNCT;
    if (FUNC6(c)) ctable[(unsigned char)c] |= _Locale_SPACE;
    if (FUNC8(c)) ctable[(unsigned char)c] |= _Locale_XDIGIT;
    if (FUNC7(c)) ctable[(unsigned char)c] |= _Locale_UPPER;
    if (FUNC3(c)) ctable[(unsigned char)c] |= _Locale_LOWER;
    if (c == 127) break;
  }

  /* ASCII is a 7-bit code, so everything else is non-ASCII. */
  FUNC9(&(ctable[128]), 0, 128 * sizeof(_Locale_mask_t));
}