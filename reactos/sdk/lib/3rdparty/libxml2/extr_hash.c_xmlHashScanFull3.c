
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef int (* xmlHashScannerFull ) (int *,void*,int ,int ,int ) ;
typedef TYPE_2__* xmlHashEntryPtr ;
typedef int xmlChar ;
struct TYPE_5__ {scalar_t__ valid; int name3; int name2; int name; int * payload; struct TYPE_5__* next; } ;
struct TYPE_4__ {int size; TYPE_2__* table; } ;


 scalar_t__ xmlStrEqual (int const*,int ) ;

void
xmlHashScanFull3(xmlHashTablePtr table, const xmlChar *name,
   const xmlChar *name2, const xmlChar *name3,
   xmlHashScannerFull f, void *data) {
    int i;
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
  if (((name == ((void*)0)) || (xmlStrEqual(name, iter->name))) &&
      ((name2 == ((void*)0)) || (xmlStrEqual(name2, iter->name2))) &&
      ((name3 == ((void*)0)) || (xmlStrEqual(name3, iter->name3))) &&
      (iter->payload != ((void*)0))) {
      f(iter->payload, data, iter->name,
        iter->name2, iter->name3);
  }
  iter = next;
     }
 }
    }
}
