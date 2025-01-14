
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct _Locale_collate {int dummy; } ;
typedef int locale_t ;


 int wcscoll_l (scalar_t__*,scalar_t__*,int ) ;
 int wcsncpy (scalar_t__*,scalar_t__ const*,size_t) ;

int _WLocale_strcmp(struct _Locale_collate *__loc,
                    const wchar_t *s1, size_t n1,
                    const wchar_t *s2, size_t n2) {
  int ret = 0;
  wchar_t buf1[64], buf2[64];
  while (n1 > 0 || n2 > 0) {
    size_t bufsize1 = n1 < 63 ? n1 : 63;
    size_t bufsize2 = n2 < 63 ? n2 : 63;
    wcsncpy(buf1, s1, bufsize1); buf1[bufsize1] = 0;
    wcsncpy(buf2, s2, bufsize2); buf2[bufsize2] = 0;

    ret = wcscoll_l(buf1, buf2, (locale_t)__loc);
    if (ret != 0) return ret;
    s1 += bufsize1; n1 -= bufsize1;
    s2 += bufsize2; n2 -= bufsize2;
  }
  return ret;
}
