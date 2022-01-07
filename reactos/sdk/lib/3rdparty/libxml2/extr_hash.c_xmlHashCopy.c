
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef TYPE_2__* xmlHashEntryPtr ;
typedef int (* xmlHashCopier ) (int ,int ) ;
struct TYPE_8__ {scalar_t__ valid; int name; int payload; int name3; int name2; struct TYPE_8__* next; } ;
struct TYPE_7__ {int size; int nbElems; TYPE_2__* table; } ;


 int xmlHashAddEntry3 (TYPE_1__*,int ,int ,int ,int ) ;
 TYPE_1__* xmlHashCreate (int) ;

xmlHashTablePtr
xmlHashCopy(xmlHashTablePtr table, xmlHashCopier f) {
    int i;
    xmlHashEntryPtr iter;
    xmlHashEntryPtr next;
    xmlHashTablePtr ret;

    if (table == ((void*)0))
 return(((void*)0));
    if (f == ((void*)0))
 return(((void*)0));

    ret = xmlHashCreate(table->size);
    if (ret == ((void*)0))
        return(((void*)0));

    if (table->table) {
 for(i = 0; i < table->size; i++) {
     if (table->table[i].valid == 0)
  continue;
     iter = &(table->table[i]);
     while (iter) {
  next = iter->next;
  xmlHashAddEntry3(ret, iter->name, iter->name2,
            iter->name3, f(iter->payload, iter->name));
  iter = next;
     }
 }
    }
    ret->nbElems = table->nbElems;
    return(ret);
}
