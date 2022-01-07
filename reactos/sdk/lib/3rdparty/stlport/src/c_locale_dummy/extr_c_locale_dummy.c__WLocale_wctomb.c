
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct _Locale_codecvt {int dummy; } ;
typedef int mbstate_t ;



size_t _WLocale_wctomb(struct _Locale_codecvt *lcodecvt,
                       char *to, size_t n,
                       const wchar_t c,
                       mbstate_t *st)
{ *to = (char)c; return 1; }
