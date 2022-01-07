
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; TYPE_2__* table; scalar_t__ filled; } ;
typedef TYPE_1__ htab_table ;
struct TYPE_5__ {struct TYPE_5__* str; scalar_t__ used; } ;


 int safe_free (TYPE_2__*) ;

void htab_destroy(htab_table* htab)
{
 size_t i;

 if ((htab == ((void*)0)) || (htab->table == ((void*)0))) {
  return;
 }

 for (i=0; i<htab->size+1; i++) {
  if (htab->table[i].used) {
   safe_free(htab->table[i].str);
  }
 }
 htab->filled = 0; htab->size = 0;
 safe_free(htab->table);
 htab->table = ((void*)0);
}
