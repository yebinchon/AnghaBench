#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {char** month; char** abbrev_month; char** dayofweek; char** abbrev_dayofweek; char* date_format; char* long_date_format; char* time_format; char* date_time_format; char* long_date_time_format; char* am; char* pm; int /*<<< orphan*/  cp; TYPE_1__ lc; } ;
typedef  TYPE_2__ _Locale_time_t ;
typedef  int /*<<< orphan*/  _Locale_lcid_t ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INVARIANT_LCID ; 
 int LOCALE_S1159 ; 
 int LOCALE_S2359 ; 
 int LOCALE_SABBREVDAYNAME1 ; 
 int LOCALE_SABBREVDAYNAME7 ; 
 int LOCALE_SABBREVMONTHNAME1 ; 
 int LOCALE_SABBREVMONTHNAME12 ; 
 int LOCALE_SDAYNAME1 ; 
 int LOCALE_SDAYNAME7 ; 
 int LOCALE_SLONGDATE ; 
 int LOCALE_SMONTHNAME1 ; 
 int LOCALE_SMONTHNAME12 ; 
 int LOCALE_SSHORTDATE ; 
 int LOCALE_STIMEFORMAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int _STLP_LOC_NO_MEMORY ; 
 int _STLP_LOC_UNKNOWN_NAME ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*) ; 
 int FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,char*,int) ; 
 int FUNC6 (char const*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*) ; 

_Locale_time_t* FUNC12(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  int size, month, dayofweek;
  size_t length;
  char fmt80[80];
  wchar_t wbuf80[80];

  _Locale_time_t *ltime = (_Locale_time_t*)FUNC9(sizeof(_Locale_time_t));
  
  if (!ltime) { *__err_code = _STLP_LOC_NO_MEMORY; return ltime; }
  FUNC10(ltime, 0, sizeof(_Locale_time_t));

  if (FUNC6(name, &ltime->lc.id, ltime->cp, lc_hint) == -1)
  { FUNC8(ltime); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }

#if defined (__BORLANDC__)
  if ( ltime->lc.id == INVARIANT_LCID && name[0] == 'C' && name[1] == 0 )
  { ltime->lc.id = 0x409; }
#endif

  for (month = LOCALE_SMONTHNAME1; month <= LOCALE_SMONTHNAME12; ++month) { /* Small hack :-) */
    size = FUNC0(ltime->lc.id, month, NULL, 0);
    ltime->month[month - LOCALE_SMONTHNAME1] = (char*)FUNC9(size);
    if (!ltime->month[month - LOCALE_SMONTHNAME1])
    { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
    FUNC7(ltime->lc.id, ltime->cp, month, ltime->month[month - LOCALE_SMONTHNAME1], size, wbuf80, 80);
  }

  for (month = LOCALE_SABBREVMONTHNAME1; month <= LOCALE_SABBREVMONTHNAME12; ++month) {
    size = FUNC0(ltime->lc.id, month, NULL, 0);
    ltime->abbrev_month[month - LOCALE_SABBREVMONTHNAME1] = (char*)FUNC9(size);
    if (!ltime->abbrev_month[month - LOCALE_SABBREVMONTHNAME1])
    { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
    FUNC7(ltime->lc.id, ltime->cp, month, ltime->abbrev_month[month - LOCALE_SABBREVMONTHNAME1], size, wbuf80, 80);
  }

  for (dayofweek = LOCALE_SDAYNAME1; dayofweek <= LOCALE_SDAYNAME7; ++dayofweek) {
    int dayindex = ( dayofweek != LOCALE_SDAYNAME7 ) ? dayofweek - LOCALE_SDAYNAME1 + 1 : 0;
    size = FUNC0(ltime->lc.id, dayofweek, NULL, 0);
    ltime->dayofweek[dayindex] = (char*)FUNC9(size);
    if (!ltime->dayofweek[dayindex])
    { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
    FUNC7(ltime->lc.id, ltime->cp, dayofweek, ltime->dayofweek[dayindex], size, wbuf80, 80);
  }

  for (dayofweek = LOCALE_SABBREVDAYNAME1; dayofweek <= LOCALE_SABBREVDAYNAME7; ++dayofweek) {
    int dayindex = ( dayofweek != LOCALE_SABBREVDAYNAME7 ) ? dayofweek - LOCALE_SABBREVDAYNAME1 + 1 : 0;
    size = FUNC0(ltime->lc.id, dayofweek, NULL, 0);
    ltime->abbrev_dayofweek[dayindex] = (char*)FUNC9(size);
    if (!ltime->abbrev_dayofweek[dayindex])
    { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
    FUNC7(ltime->lc.id, ltime->cp, dayofweek, ltime->abbrev_dayofweek[dayindex], size, wbuf80, 80);
  }

  FUNC7(ltime->lc.id, ltime->cp, LOCALE_SSHORTDATE, fmt80, 80, wbuf80, 80);
  size = FUNC4(fmt80, NULL, 0);
  ltime->date_format = (char*)FUNC9(size);
  if (!ltime->date_format)
  { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
  FUNC4(fmt80, ltime->date_format, size);

  FUNC7(ltime->lc.id, ltime->cp, LOCALE_SLONGDATE, fmt80, 80, wbuf80, 80);
  size = FUNC4(fmt80, NULL, 0);
  ltime->long_date_format = (char*)FUNC9(size);
  if (!ltime->long_date_format)
  { FUNC1(ltime);*__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
  FUNC4(fmt80, ltime->long_date_format, size);

  FUNC7(ltime->lc.id, ltime->cp, LOCALE_STIMEFORMAT, fmt80, 80, wbuf80, 80);
  size = FUNC5(fmt80, NULL, 0);
  ltime->time_format = (char*)FUNC9(size);
  if (!ltime->time_format)
  { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
  FUNC5(fmt80, ltime->time_format, size);

  /* NT doesn't provide this information, we must simulate. */
  length = FUNC11(ltime->date_format) + FUNC11(ltime->time_format) + 1 /* space */ + 1 /* trailing 0 */;
  ltime->date_time_format = (char*)FUNC9(length);
  if (!ltime->date_time_format)
  { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
  FUNC3(ltime->date_time_format, length, ltime->date_format);
  FUNC2(ltime->date_time_format, length, " ");
  FUNC2(ltime->date_time_format, length, ltime->time_format);

  /* NT doesn't provide this information, we must simulate. */
  length = FUNC11(ltime->long_date_format) + FUNC11(ltime->time_format) + 1 /* space */ + 1 /* trailing 0 */;
  ltime->long_date_time_format = (char*)FUNC9(length);
  if (!ltime->long_date_time_format)
  { FUNC1(ltime); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
  FUNC3(ltime->long_date_time_format, length, ltime->long_date_format);
  FUNC2(ltime->long_date_time_format, length, " ");
  FUNC2(ltime->long_date_time_format, length, ltime->time_format);

  FUNC7(ltime->lc.id, ltime->cp, LOCALE_S1159, ltime->am, 9, wbuf80, 80);
  FUNC7(ltime->lc.id, ltime->cp, LOCALE_S2359, ltime->pm, 9, wbuf80, 80);

  return ltime;
}