#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_7__ {char* decimal_point; char* thousands_sep; char* grouping; char* curr_symbol; char* negative_sign; char* positive_sign; char* int_curr_symbol; int /*<<< orphan*/  cp; TYPE_1__ lc; void* int_frac_digits; void* frac_digits; } ;
typedef  TYPE_2__ _Locale_monetary_t ;
typedef  int /*<<< orphan*/  _Locale_lcid_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ INVARIANT_LCID ; 
 int /*<<< orphan*/  LOCALE_ICURRDIGITS ; 
 int /*<<< orphan*/  LOCALE_IINTLCURRDIGITS ; 
 int /*<<< orphan*/  LOCALE_SCURRENCY ; 
 int /*<<< orphan*/  LOCALE_SDECIMAL ; 
 int /*<<< orphan*/  LOCALE_SGROUPING ; 
 int /*<<< orphan*/  LOCALE_SINTLSYMBOL ; 
 int /*<<< orphan*/  LOCALE_SNEGATIVESIGN ; 
 int /*<<< orphan*/  LOCALE_SPOSITIVESIGN ; 
 int /*<<< orphan*/  LOCALE_STHOUSAND ; 
 int _STLP_LOC_NO_MEMORY ; 
 int _STLP_LOC_UNKNOWN_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

_Locale_monetary_t* FUNC8(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  char *GroupingBuffer;
  int BufferSize;
  char FracDigits[3];
  wchar_t wbuf[6];

  _Locale_monetary_t *lmon = (_Locale_monetary_t*)FUNC6(sizeof(_Locale_monetary_t));
  if (!lmon) { *__err_code = _STLP_LOC_NO_MEMORY; return lmon; }
  FUNC7(lmon, 0, sizeof(_Locale_monetary_t));

  if (FUNC2(name, &lmon->lc.id, lmon->cp, lc_hint) == -1)
  { FUNC5(lmon); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }

  if (lmon->lc.id != INVARIANT_LCID) {
    /* Extract information about monetary system */
    FUNC3(lmon->lc.id, lmon->cp, LOCALE_SDECIMAL, lmon->decimal_point, 4, wbuf, 6);
    FUNC3(lmon->lc.id, lmon->cp, LOCALE_STHOUSAND, lmon->thousands_sep, 4, wbuf, 6);

    BufferSize = FUNC0(lmon->lc.id, LOCALE_SGROUPING, NULL, 0);
    GroupingBuffer = (char*)FUNC6(BufferSize);
    if (!GroupingBuffer)
    { lmon->grouping = NULL; *__err_code = _STLP_LOC_NO_MEMORY; return lmon; }
    FUNC0(lmon->lc.id, LOCALE_SGROUPING, GroupingBuffer, BufferSize);
    FUNC1(GroupingBuffer);
    lmon->grouping = GroupingBuffer;

    FUNC3(lmon->lc.id, lmon->cp, LOCALE_SCURRENCY, lmon->curr_symbol, 6, wbuf, 6);
    FUNC3(lmon->lc.id, lmon->cp, LOCALE_SNEGATIVESIGN, lmon->negative_sign, 5, wbuf, 6);
    FUNC3(lmon->lc.id, lmon->cp, LOCALE_SPOSITIVESIGN, lmon->positive_sign, 5, wbuf, 6);

    FUNC0(lmon->lc.id, LOCALE_ICURRDIGITS, FracDigits, 3);
    lmon->frac_digits = FUNC4(FracDigits);

    FUNC0(lmon->lc.id, LOCALE_IINTLCURRDIGITS, FracDigits, 3);
    lmon->int_frac_digits = FUNC4(FracDigits);

    FUNC3(lmon->lc.id, lmon->cp, LOCALE_SINTLSYMBOL, lmon->int_curr_symbol, 5, wbuf, 6);
    /* Even if Platform SDK documentation says that the returned symbol should
     * be a 3 letters symbol followed by a seperation character, experimentation
     * has shown that no seperation character is ever appended. We are adding it
     * ourself to conform to the POSIX specification.
     */
    if (lmon->int_curr_symbol[3] == 0) {
      lmon->int_curr_symbol[3] = ' ';
      lmon->int_curr_symbol[4] = 0;
    }
  }
  /* else it is already ok */

  return lmon;
}