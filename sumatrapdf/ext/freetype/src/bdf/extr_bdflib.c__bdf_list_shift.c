
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long used; int * field; } ;
typedef TYPE_1__ _bdf_list_t ;



__attribute__((used)) static void
  _bdf_list_shift( _bdf_list_t* list,
                   unsigned long n )
  {
    unsigned long i, u;


    if ( list == 0 || list->used == 0 || n == 0 )
      return;

    if ( n >= list->used )
    {
      list->used = 0;
      return;
    }

    for ( u = n, i = 0; u < list->used; i++, u++ )
      list->field[i] = list->field[u];
    list->used -= n;
  }
