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
struct TYPE_7__ {char* decimal_point; char* thousands_sep; char* grouping; TYPE_1__ lc; int /*<<< orphan*/  cp; } ;
typedef  TYPE_2__ _Locale_numeric_t ;
typedef  int /*<<< orphan*/  _Locale_lcid_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ INVARIANT_LCID ; 
 int /*<<< orphan*/  LOCALE_SDECIMAL ; 
 int /*<<< orphan*/  LOCALE_SGROUPING ; 
 int /*<<< orphan*/  LOCALE_STHOUSAND ; 
 int _STLP_LOC_NO_MEMORY ; 
 int _STLP_LOC_UNKNOWN_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

_Locale_numeric_t* FUNC7(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  wchar_t wbuf[4];
  char *GroupingBuffer;
  int BufferSize;

  _Locale_numeric_t *lnum = (_Locale_numeric_t*)FUNC5(sizeof(_Locale_numeric_t));
  if (!lnum) { *__err_code = _STLP_LOC_NO_MEMORY; return lnum; }
  FUNC6(lnum, 0, sizeof(_Locale_numeric_t));

  if (FUNC2(name, &lnum->lc.id, lnum->cp, lc_hint) == -1)
  { FUNC4(lnum); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }

#if defined (__BORLANDC__)
  if (lnum->lc.id != INVARIANT_LCID) {
#endif
  FUNC3(lnum->lc.id, lnum->cp, LOCALE_SDECIMAL, lnum->decimal_point, 4, wbuf, 4);
  FUNC3(lnum->lc.id, lnum->cp, LOCALE_STHOUSAND, lnum->thousands_sep, 4, wbuf, 4);
#if defined (__BORLANDC__)
  }
  else
    lnum->decimal_point[0] = '.';
#endif

  if (lnum->lc.id != INVARIANT_LCID) {
    BufferSize = FUNC0(lnum->lc.id, LOCALE_SGROUPING, NULL, 0);
    GroupingBuffer = (char*)FUNC5(BufferSize);
    if (!GroupingBuffer) { FUNC4(lnum); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
    FUNC0(lnum->lc.id, LOCALE_SGROUPING, GroupingBuffer, BufferSize);
    FUNC1(GroupingBuffer);
    lnum->grouping = GroupingBuffer;
  }
  else {
    lnum->grouping = (char*)FUNC5(1);
    if (!lnum->grouping) { FUNC4(lnum); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
    lnum->grouping[0] = 0;
  }

  return lnum;
}