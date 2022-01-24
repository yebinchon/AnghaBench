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
typedef  int /*<<< orphan*/  wint_t ;
struct _Locale_ctype {int dummy; } ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int _Locale_mask_t ;

/* Variables and functions */
 int _Locale_ALPHA ; 
 int _Locale_CNTRL ; 
 int _Locale_DIGIT ; 
 int _Locale_LOWER ; 
 int _Locale_PRINT ; 
 int _Locale_PUNCT ; 
 int _Locale_SPACE ; 
 int _Locale_UPPER ; 
 int _Locale_XDIGIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

_Locale_mask_t FUNC9( struct _Locale_ctype *__loc, wint_t wc, _Locale_mask_t __mask )
{
  _Locale_mask_t ret = 0;
  if ((__mask & _Locale_ALPHA) != 0 && FUNC0(wc, (locale_t)__loc))
    ret |= _Locale_ALPHA;
  
  if ((__mask & _Locale_CNTRL) != 0 && FUNC1(wc, (locale_t)__loc))
    ret |= _Locale_CNTRL;

  if ((__mask & _Locale_DIGIT) != 0 && FUNC2(wc, (locale_t)__loc))
    ret |= _Locale_DIGIT;

  if ((__mask & _Locale_PRINT) != 0 && FUNC4(wc, (locale_t)__loc)) 
    ret |= _Locale_PRINT;

  if ((__mask & _Locale_PUNCT) != 0 && FUNC5(wc, (locale_t)__loc))
    ret |= _Locale_PUNCT;

  if ((__mask & _Locale_SPACE) != 0 && FUNC6(wc, (locale_t)__loc))
    ret |= _Locale_SPACE;

  if ((__mask & _Locale_XDIGIT) != 0 && FUNC8(wc, (locale_t)__loc))
    ret |= _Locale_XDIGIT;

  if ((__mask & _Locale_UPPER) != 0 && FUNC7(wc, (locale_t)__loc))
    ret |= _Locale_UPPER;

  if ((__mask & _Locale_LOWER) != 0 && FUNC3(wc, (locale_t)__loc))
    ret |= _Locale_LOWER;

  return ret;
}