
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {scalar_t__ cp; int mbtowc_flags; int cleads; } ;
typedef TYPE_1__ _Locale_codecvt_t ;


 scalar_t__ CP_UTF7 ;
 scalar_t__ CP_UTF8 ;

 int GetLastError () ;
 int MultiByteToWideChar (scalar_t__,int ,char const*,unsigned int,int *,int) ;
 scalar_t__ __isleadbyte (char const,int ) ;

__attribute__((used)) static int __mbtowc(_Locale_codecvt_t *l, wchar_t *dst, const char *from, unsigned int count) {
  int result;

  if (l->cp == CP_UTF7 || l->cp == CP_UTF8) {
    result = MultiByteToWideChar(l->cp, l->mbtowc_flags, from, count, dst, 1);
    if (result == 0) {
      switch (GetLastError()) {
        case 128:
          return -2;
        default:
          return -1;
      }
    }
  }
  else {
    if (count == 1 && __isleadbyte(*from, l->cleads)) return (size_t)-2;
    result = MultiByteToWideChar(l->cp, l->mbtowc_flags, from, count, dst, 1);
    if (result == 0) return -1;
  }

  return result;
}
