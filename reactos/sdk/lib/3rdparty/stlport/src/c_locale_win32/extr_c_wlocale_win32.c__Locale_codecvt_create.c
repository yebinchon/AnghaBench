
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int _Locale_lcid_t ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {scalar_t__ cp; int wctomb_flags; int max_char_size; int* cleads; int mbtowc_flags; TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_codecvt_t ;
struct TYPE_10__ {int MaxCharSize; scalar_t__ LeadByte; } ;
typedef TYPE_3__ CPINFO ;


 int CHAR_BIT ;
 scalar_t__ CP_UTF7 ;
 scalar_t__ CP_UTF8 ;
 int GetCPInfo (scalar_t__,TYPE_3__*) ;
 int MAX_CP_LEN ;
 int MB_PRECOMPOSED ;
 int WC_COMPOSITECHECK ;
 int WC_SEPCHARS ;
 int _STLP_LOC_NO_MEMORY ;
 int _STLP_LOC_UNKNOWN_NAME ;
 int __GetLCIDFromName (char const*,int *,char*,int *) ;
 scalar_t__ atoi (char*) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

_Locale_codecvt_t* _Locale_codecvt_create(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  char cp_name[MAX_CP_LEN + 1];
  unsigned char *ptr;
  CPINFO CPInfo;
  int i;

  _Locale_codecvt_t *lcodecvt = (_Locale_codecvt_t*)malloc(sizeof(_Locale_codecvt_t));

  if (!lcodecvt) { *__err_code = _STLP_LOC_NO_MEMORY; return lcodecvt; }
  memset(lcodecvt, 0, sizeof(_Locale_codecvt_t));

  if (__GetLCIDFromName(name, &lcodecvt->lc.id, cp_name, lc_hint) == -1)
  { free(lcodecvt); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }

  lcodecvt->cp = atoi(cp_name);
  if (!GetCPInfo(lcodecvt->cp, &CPInfo)) { free(lcodecvt); return ((void*)0); }

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
