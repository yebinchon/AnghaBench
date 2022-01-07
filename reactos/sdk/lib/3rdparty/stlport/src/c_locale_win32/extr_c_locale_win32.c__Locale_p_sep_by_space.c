
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_monetary_t ;


 int GetLocaleInfoA (int ,int ,char*,int) ;
 int LOCALE_IPOSSEPBYSPACE ;

int _Locale_p_sep_by_space(_Locale_monetary_t * lmon) {
  char loc_data[2];
  GetLocaleInfoA(lmon->lc.id, LOCALE_IPOSSEPBYSPACE, loc_data, 2);
  if (loc_data[0] == '0') return 0;
  else if (loc_data[0] == '1') return 1;
  else return -1;
}
