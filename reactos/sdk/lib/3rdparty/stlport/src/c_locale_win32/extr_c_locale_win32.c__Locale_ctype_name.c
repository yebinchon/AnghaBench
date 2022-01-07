
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; int cp; } ;
typedef TYPE_2__ _Locale_ctype_t ;


 int MAX_CP_LEN ;
 char const* __GetLocaleName (int ,char*,char*) ;
 int my_ltoa (int ,char*) ;

char const* _Locale_ctype_name(const _Locale_ctype_t* ltype, char* buf) {
  char cp_buf[MAX_CP_LEN + 1];
  my_ltoa(ltype->cp, cp_buf);
  return __GetLocaleName(ltype->lc.id, cp_buf, buf);
}
