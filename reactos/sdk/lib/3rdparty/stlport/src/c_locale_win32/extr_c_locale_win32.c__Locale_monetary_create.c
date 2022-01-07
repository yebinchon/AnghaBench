
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_7__ {char* decimal_point; char* thousands_sep; char* grouping; char* curr_symbol; char* negative_sign; char* positive_sign; char* int_curr_symbol; int cp; TYPE_1__ lc; void* int_frac_digits; void* frac_digits; } ;
typedef TYPE_2__ _Locale_monetary_t ;
typedef int _Locale_lcid_t ;


 int GetLocaleInfoA (scalar_t__,int ,char*,int) ;
 scalar_t__ INVARIANT_LCID ;
 int LOCALE_ICURRDIGITS ;
 int LOCALE_IINTLCURRDIGITS ;
 int LOCALE_SCURRENCY ;
 int LOCALE_SDECIMAL ;
 int LOCALE_SGROUPING ;
 int LOCALE_SINTLSYMBOL ;
 int LOCALE_SNEGATIVESIGN ;
 int LOCALE_SPOSITIVESIGN ;
 int LOCALE_STHOUSAND ;
 int _STLP_LOC_NO_MEMORY ;
 int _STLP_LOC_UNKNOWN_NAME ;
 int __FixGrouping (char*) ;
 int __GetLCIDFromName (char const*,scalar_t__*,int ,int *) ;
 int __GetLocaleInfoUsingACP (scalar_t__,int ,int ,char*,int,int *,int) ;
 void* atoi (char*) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

_Locale_monetary_t* _Locale_monetary_create(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  char *GroupingBuffer;
  int BufferSize;
  char FracDigits[3];
  wchar_t wbuf[6];

  _Locale_monetary_t *lmon = (_Locale_monetary_t*)malloc(sizeof(_Locale_monetary_t));
  if (!lmon) { *__err_code = _STLP_LOC_NO_MEMORY; return lmon; }
  memset(lmon, 0, sizeof(_Locale_monetary_t));

  if (__GetLCIDFromName(name, &lmon->lc.id, lmon->cp, lc_hint) == -1)
  { free(lmon); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }

  if (lmon->lc.id != INVARIANT_LCID) {

    __GetLocaleInfoUsingACP(lmon->lc.id, lmon->cp, LOCALE_SDECIMAL, lmon->decimal_point, 4, wbuf, 6);
    __GetLocaleInfoUsingACP(lmon->lc.id, lmon->cp, LOCALE_STHOUSAND, lmon->thousands_sep, 4, wbuf, 6);

    BufferSize = GetLocaleInfoA(lmon->lc.id, LOCALE_SGROUPING, ((void*)0), 0);
    GroupingBuffer = (char*)malloc(BufferSize);
    if (!GroupingBuffer)
    { lmon->grouping = ((void*)0); *__err_code = _STLP_LOC_NO_MEMORY; return lmon; }
    GetLocaleInfoA(lmon->lc.id, LOCALE_SGROUPING, GroupingBuffer, BufferSize);
    __FixGrouping(GroupingBuffer);
    lmon->grouping = GroupingBuffer;

    __GetLocaleInfoUsingACP(lmon->lc.id, lmon->cp, LOCALE_SCURRENCY, lmon->curr_symbol, 6, wbuf, 6);
    __GetLocaleInfoUsingACP(lmon->lc.id, lmon->cp, LOCALE_SNEGATIVESIGN, lmon->negative_sign, 5, wbuf, 6);
    __GetLocaleInfoUsingACP(lmon->lc.id, lmon->cp, LOCALE_SPOSITIVESIGN, lmon->positive_sign, 5, wbuf, 6);

    GetLocaleInfoA(lmon->lc.id, LOCALE_ICURRDIGITS, FracDigits, 3);
    lmon->frac_digits = atoi(FracDigits);

    GetLocaleInfoA(lmon->lc.id, LOCALE_IINTLCURRDIGITS, FracDigits, 3);
    lmon->int_frac_digits = atoi(FracDigits);

    __GetLocaleInfoUsingACP(lmon->lc.id, lmon->cp, LOCALE_SINTLSYMBOL, lmon->int_curr_symbol, 5, wbuf, 6);





    if (lmon->int_curr_symbol[3] == 0) {
      lmon->int_curr_symbol[3] = ' ';
      lmon->int_curr_symbol[4] = 0;
    }
  }


  return lmon;
}
