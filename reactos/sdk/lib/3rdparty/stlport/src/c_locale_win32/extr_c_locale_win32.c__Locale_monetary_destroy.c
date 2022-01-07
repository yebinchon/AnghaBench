
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* grouping; } ;
typedef TYPE_1__ _Locale_monetary_t ;


 int free (TYPE_1__*) ;

void _Locale_monetary_destroy(_Locale_monetary_t* lmon) {
  if (!lmon) return;

  if (lmon->grouping) free(lmon->grouping);
  free(lmon);
}
