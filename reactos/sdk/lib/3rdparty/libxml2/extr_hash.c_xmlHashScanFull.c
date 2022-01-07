
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef int (* xmlHashScannerFull ) (int *,void*,int ,int ,int ) ;
typedef TYPE_2__* xmlHashEntryPtr ;
struct TYPE_5__ {scalar_t__ valid; struct TYPE_5__* next; int name3; int name2; int name; int * payload; } ;
struct TYPE_4__ {int size; int nbElems; TYPE_2__* table; } ;



void
xmlHashScanFull(xmlHashTablePtr table, xmlHashScannerFull f, void *data) {
    int i, nb;
    xmlHashEntryPtr iter;
    xmlHashEntryPtr next;

    if (table == ((void*)0))
 return;
    if (f == ((void*)0))
 return;

    if (table->table) {
 for(i = 0; i < table->size; i++) {
     if (table->table[i].valid == 0)
  continue;
     iter = &(table->table[i]);
     while (iter) {
  next = iter->next;
                nb = table->nbElems;
  if ((f != ((void*)0)) && (iter->payload != ((void*)0)))
      f(iter->payload, data, iter->name,
        iter->name2, iter->name3);
                if (nb != table->nbElems) {

                    if (iter == &(table->table[i])) {
                        if (table->table[i].valid == 0)
                            iter = ((void*)0);
                        if (table->table[i].next != next)
       iter = &(table->table[i]);
                    } else
          iter = next;
                } else
      iter = next;
     }
 }
    }
}
