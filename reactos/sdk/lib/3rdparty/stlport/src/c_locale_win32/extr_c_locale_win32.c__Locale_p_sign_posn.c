
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_monetary_t ;


 int CHAR_MAX ;
 int GetLocaleInfoA (scalar_t__,int ,char*,int) ;
 scalar_t__ INVARIANT_LCID ;
 int LOCALE_IPOSSIGNPOSN ;
 int atoi (char*) ;

int _Locale_p_sign_posn(_Locale_monetary_t * lmon) {
  char loc_data[2];
  if (lmon->lc.id != INVARIANT_LCID) {
    GetLocaleInfoA(lmon->lc.id, LOCALE_IPOSSIGNPOSN, loc_data, 2);
    return atoi(loc_data);
  }
  else {
    return CHAR_MAX;
  }
}
