
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 int list_free (TYPE_1__*) ;
 int swaynag_type_free (int ) ;

void swaynag_types_free(list_t *types) {
 for (int i = 0; i < types->length; ++i) {
  swaynag_type_free(types->items[i]);
 }
 list_free(types);
}
