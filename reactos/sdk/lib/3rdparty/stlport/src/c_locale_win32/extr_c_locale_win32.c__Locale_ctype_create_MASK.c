#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int id; } ;
struct TYPE_15__ {scalar_t__ cp; unsigned short* ctable; TYPE_1__ lc; } ;
typedef  TYPE_2__ wchar_t ;
typedef  int /*<<< orphan*/  ver_info ;
typedef  int /*<<< orphan*/  _Locale_lcid_t ;
typedef  TYPE_2__ _Locale_ctype_t ;
typedef  scalar_t__ UINT ;
struct TYPE_17__ {int MaxCharSize; scalar_t__ LeadByte; } ;
struct TYPE_16__ {int dwOSVersionInfoSize; scalar_t__ dwPlatformId; } ;
typedef  TYPE_4__ OSVERSIONINFO ;
typedef  TYPE_5__ CPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  CT_CTYPE1 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char const*,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int INVARIANT_LCID ; 
 int /*<<< orphan*/  MAX_CP_LEN ; 
 int /*<<< orphan*/  MB_PRECOMPOSED ; 
 unsigned short FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short*,unsigned short*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,char const*,int,TYPE_2__*,int) ; 
 scalar_t__ VER_PLATFORM_WIN32_NT ; 
 int WC_COMPOSITECHECK ; 
 int WC_SEPCHARS ; 
 int /*<<< orphan*/  FUNC7 (int,int,TYPE_2__*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int _STLP_LOC_NO_MEMORY ; 
 int _STLP_LOC_UNKNOWN_NAME ; 
 int FUNC8 (int) ; 
 int FUNC9 (char const*,int*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

_Locale_ctype_t* FUNC14(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  char cp_name[MAX_CP_LEN + 1];
  int NativeCP;
  unsigned char Buffer[256];
  unsigned char *ptr;
  CPINFO CPInfo;
  int i;
  wchar_t *wbuffer;
  int BufferSize;

  _Locale_ctype_t *ltype = (_Locale_ctype_t*)FUNC12(sizeof(_Locale_ctype_t));

  if (!ltype) { *__err_code = _STLP_LOC_NO_MEMORY; return ltype; }
  FUNC13(ltype, 0, sizeof(_Locale_ctype_t));

  if (FUNC9(name, &ltype->lc.id, cp_name, lc_hint) == -1)
  { FUNC11(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }

#if defined (__BORLANDC__)
  if ( ltype->lc.id == INVARIANT_LCID && name[0] == 'C' && name[1] == 0 )
  { ltype->lc.id = 0x409; }
#endif

  ltype->cp = FUNC10(cp_name);

  NativeCP = FUNC8(ltype->lc.id);

  /* Make table with all characters. */
  for (i = 0; i < 256; ++i) Buffer[i] = (unsigned char)i;

  if (!FUNC0(NativeCP, &CPInfo)) { FUNC11(ltype); return NULL; }

  if (CPInfo.MaxCharSize > 1) {
    for (ptr = (unsigned char*)CPInfo.LeadByte; *ptr && *(ptr + 1); ptr+=2)
      for (i = *ptr; i <= *(ptr + 1); ++i) Buffer[i] = 0;
  }

  if ((UINT)NativeCP != ltype->cp) {
    OSVERSIONINFO ver_info;
    ver_info.dwOSVersionInfoSize = sizeof(ver_info);
    FUNC3(&ver_info);
    if (ver_info.dwPlatformId == VER_PLATFORM_WIN32_NT) {
      /* Convert character sequence to Unicode. */
      BufferSize = FUNC6(ltype->cp, MB_PRECOMPOSED, (const char*)Buffer, 256, NULL, 0);
      if (!BufferSize) { FUNC11(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }
      wbuffer = (wchar_t*)FUNC12(BufferSize * sizeof(wchar_t));
      if (!wbuffer) { FUNC11(ltype); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
      FUNC6(ltype->cp, MB_PRECOMPOSED, (const char*)Buffer, 256, wbuffer, BufferSize);

      FUNC2(CT_CTYPE1, wbuffer, 256, ltype->ctable);
      FUNC5(ltype->ctable, ltype->ctable + 256);
      FUNC11(wbuffer);
    }
    else {
      unsigned short ctable[256];
      unsigned char TargetBuffer[256];
      FUNC1(ltype->lc.id, CT_CTYPE1, (const char*)Buffer, 256, ctable);

      /* Convert character sequence to target code page. */
      BufferSize = FUNC6(NativeCP, MB_PRECOMPOSED, (const char*)Buffer, 256, NULL, 0);
      if (!BufferSize) { FUNC11(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }
      wbuffer = (wchar_t*)FUNC12(BufferSize * sizeof(wchar_t));
      if (!wbuffer) { FUNC11(ltype); *__err_code = _STLP_LOC_NO_MEMORY; return NULL; }
      FUNC6(NativeCP, MB_PRECOMPOSED, (const char*)Buffer, 256, wbuffer, BufferSize);
      if (!FUNC7(ltype->cp, WC_COMPOSITECHECK | WC_SEPCHARS, wbuffer, BufferSize, (char*)TargetBuffer, 256, NULL, FALSE))
      { FUNC11(wbuffer); FUNC11(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return NULL; }

      FUNC11(wbuffer);

      /* Translate ctype table. */
      for (i = 0; i < 256; ++i) {
        if (!TargetBuffer[i]) continue;
        ltype->ctable[TargetBuffer[i]] = FUNC4(ctable[i]);
      }
    }
  }
  else {
    FUNC1(ltype->lc.id, CT_CTYPE1, (const char*)Buffer, 256, ltype->ctable);
    FUNC5(ltype->ctable, ltype->ctable + 256);
  }
  return ltype;
}