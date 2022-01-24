#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _Locale_lcid_t ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {scalar_t__ cp; int wctomb_flags; int max_char_size; int* cleads; int /*<<< orphan*/  mbtowc_flags; TYPE_1__ lc; } ;
typedef  TYPE_2__ _Locale_codecvt_t ;
struct TYPE_10__ {int MaxCharSize; scalar_t__ LeadByte; } ;
typedef  TYPE_3__ CPINFO ;

/* Variables and functions */
 int CHAR_BIT ; 
 scalar_t__ CP_UTF7 ; 
 scalar_t__ CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  MAX_CP_LEN ; 
 int /*<<< orphan*/  MB_PRECOMPOSED ; 
 int WC_COMPOSITECHECK ; 
 int WC_SEPCHARS ; 
 int _STLP_LOC_NO_MEMORY ; 
 int _STLP_LOC_UNKNOWN_NAME ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

_Locale_codecvt_t* FUNC6(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  char cp_name[MAX_CP_LEN + 1];
  unsigned char *ptr;
  CPINFO CPInfo;
  int i;

  _Locale_codecvt_t *lcodecvt = (_Locale_codecvt_t*)FUNC4(sizeof(_Locale_codecvt_t));

  if (!lcodecvt) { *__err_code = _STLP_LOC_NO_MEMORY; return lcodecvt; }
  FUNC5(lcodecvt, 0, sizeof(_Locale_codecvt_t));

  if (FUNC1(name, &lcodecvt->lc.id, cp_name, lc_hint) == -1)
  { FUNC3(lcodecvt); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }

  lcodecvt->cp = FUNC2(cp_name);
  if (!FUNC0(lcodecvt->cp, &CPInfo)) { FUNC3(lcodecvt); return NULL; }

  if (lcodecvt->cp != CP_UTF7 && lcodecvt->cp != CP_UTF8) {
    lcodecvt->mbtowc_flags = MB_PRECOMPOSED;
    lcodecvt->wctomb_flags = WC_COMPOSITECHECK | WC_SEPCHARS;
  }
  lcodecvt->max_char_size = CPInfo.MaxCharSize;

  if (CPInfo.MaxCharSize > 1) {
    for (ptr = (unsigned char*)CPInfo.LeadByte; *ptr && *(ptr + 1); ptr += 2)
      for (i = *ptr; i <= *(ptr + 1); ++i) lcodecvt->cleads[i / CHAR_BIT] |= (0x01 << i % CHAR_BIT);
  }

  return lcodecvt;
}