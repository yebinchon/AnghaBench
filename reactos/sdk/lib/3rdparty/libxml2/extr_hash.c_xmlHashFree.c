
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef TYPE_1__* xmlHashEntryPtr ;
typedef int (* xmlHashDeallocator ) (int *,TYPE_1__*) ;
struct TYPE_7__ {int nbElems; int size; scalar_t__ valid; int * dict; struct TYPE_7__* table; int * payload; struct TYPE_7__* name3; struct TYPE_7__* name2; struct TYPE_7__* name; struct TYPE_7__* next; } ;


 int xmlDictFree (int *) ;
 int xmlFree (TYPE_1__*) ;

void
xmlHashFree(xmlHashTablePtr table, xmlHashDeallocator f) {
    int i;
    xmlHashEntryPtr iter;
    xmlHashEntryPtr next;
    int inside_table = 0;
    int nbElems;

    if (table == ((void*)0))
 return;
    if (table->table) {
 nbElems = table->nbElems;
 for(i = 0; (i < table->size) && (nbElems > 0); i++) {
     iter = &(table->table[i]);
     if (iter->valid == 0)
  continue;
     inside_table = 1;
     while (iter) {
  next = iter->next;
  if ((f != ((void*)0)) && (iter->payload != ((void*)0)))
      f(iter->payload, iter->name);
  if (table->dict == ((void*)0)) {
      if (iter->name)
   xmlFree(iter->name);
      if (iter->name2)
   xmlFree(iter->name2);
      if (iter->name3)
   xmlFree(iter->name3);
  }
  iter->payload = ((void*)0);
  if (!inside_table)
      xmlFree(iter);
  nbElems--;
  inside_table = 0;
  iter = next;
     }
 }
 xmlFree(table->table);
    }
    if (table->dict)
        xmlDictFree(table->dict);
    xmlFree(table);
}
