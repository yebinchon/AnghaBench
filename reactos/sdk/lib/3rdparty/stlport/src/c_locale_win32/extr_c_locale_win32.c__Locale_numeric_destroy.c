
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* grouping; } ;
typedef TYPE_1__ _Locale_numeric_t ;


 int free (TYPE_1__*) ;

void _Locale_numeric_destroy(_Locale_numeric_t* lnum) {
  if (!lnum) return;

  if (lnum->grouping) free(lnum->grouping);
  free(lnum);
}
