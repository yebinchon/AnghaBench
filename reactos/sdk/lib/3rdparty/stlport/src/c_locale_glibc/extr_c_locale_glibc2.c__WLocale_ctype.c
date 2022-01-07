
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct _Locale_ctype {int dummy; } ;
typedef int locale_t ;
typedef int _Locale_mask_t ;


 int _Locale_ALPHA ;
 int _Locale_CNTRL ;
 int _Locale_DIGIT ;
 int _Locale_LOWER ;
 int _Locale_PRINT ;
 int _Locale_PUNCT ;
 int _Locale_SPACE ;
 int _Locale_UPPER ;
 int _Locale_XDIGIT ;
 scalar_t__ iswalpha_l (int ,int ) ;
 scalar_t__ iswcntrl_l (int ,int ) ;
 scalar_t__ iswdigit_l (int ,int ) ;
 scalar_t__ iswlower_l (int ,int ) ;
 scalar_t__ iswprint_l (int ,int ) ;
 scalar_t__ iswpunct_l (int ,int ) ;
 scalar_t__ iswspace_l (int ,int ) ;
 scalar_t__ iswupper_l (int ,int ) ;
 scalar_t__ iswxdigit_l (int ,int ) ;

_Locale_mask_t _WLocale_ctype( struct _Locale_ctype *__loc, wint_t wc, _Locale_mask_t __mask )
{
  _Locale_mask_t ret = 0;
  if ((__mask & _Locale_ALPHA) != 0 && iswalpha_l(wc, (locale_t)__loc))
    ret |= _Locale_ALPHA;

  if ((__mask & _Locale_CNTRL) != 0 && iswcntrl_l(wc, (locale_t)__loc))
    ret |= _Locale_CNTRL;

  if ((__mask & _Locale_DIGIT) != 0 && iswdigit_l(wc, (locale_t)__loc))
    ret |= _Locale_DIGIT;

  if ((__mask & _Locale_PRINT) != 0 && iswprint_l(wc, (locale_t)__loc))
    ret |= _Locale_PRINT;

  if ((__mask & _Locale_PUNCT) != 0 && iswpunct_l(wc, (locale_t)__loc))
    ret |= _Locale_PUNCT;

  if ((__mask & _Locale_SPACE) != 0 && iswspace_l(wc, (locale_t)__loc))
    ret |= _Locale_SPACE;

  if ((__mask & _Locale_XDIGIT) != 0 && iswxdigit_l(wc, (locale_t)__loc))
    ret |= _Locale_XDIGIT;

  if ((__mask & _Locale_UPPER) != 0 && iswupper_l(wc, (locale_t)__loc))
    ret |= _Locale_UPPER;

  if ((__mask & _Locale_LOWER) != 0 && iswlower_l(wc, (locale_t)__loc))
    ret |= _Locale_LOWER;

  return ret;
}
