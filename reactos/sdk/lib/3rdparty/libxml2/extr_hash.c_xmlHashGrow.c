
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef struct _xmlHashEntry* xmlHashEntryPtr ;
typedef int xmlHashEntry ;
struct _xmlHashEntry {scalar_t__ valid; struct _xmlHashEntry* next; int name3; int name2; int name; } ;
struct TYPE_4__ {int size; struct _xmlHashEntry* table; } ;


 int memcpy (struct _xmlHashEntry*,struct _xmlHashEntry*,int) ;
 int memset (struct _xmlHashEntry*,int ,int) ;
 int xmlFree (struct _xmlHashEntry*) ;
 int xmlGenericError (int ,char*,int,int,unsigned long) ;
 int xmlGenericErrorContext ;
 unsigned long xmlHashComputeKey (TYPE_1__*,int ,int ,int ) ;
 struct _xmlHashEntry* xmlMalloc (int) ;

__attribute__((used)) static int
xmlHashGrow(xmlHashTablePtr table, int size) {
    unsigned long key;
    int oldsize, i;
    xmlHashEntryPtr iter, next;
    struct _xmlHashEntry *oldtable;




    if (table == ((void*)0))
 return(-1);
    if (size < 8)
        return(-1);
    if (size > 8 * 2048)
 return(-1);

    oldsize = table->size;
    oldtable = table->table;
    if (oldtable == ((void*)0))
        return(-1);

    table->table = xmlMalloc(size * sizeof(xmlHashEntry));
    if (table->table == ((void*)0)) {
 table->table = oldtable;
 return(-1);
    }
    memset(table->table, 0, size * sizeof(xmlHashEntry));
    table->size = size;







    for (i = 0; i < oldsize; i++) {
 if (oldtable[i].valid == 0)
     continue;
 key = xmlHashComputeKey(table, oldtable[i].name, oldtable[i].name2,
    oldtable[i].name3);
 memcpy(&(table->table[key]), &(oldtable[i]), sizeof(xmlHashEntry));
 table->table[key].next = ((void*)0);
    }

    for (i = 0; i < oldsize; i++) {
 iter = oldtable[i].next;
 while (iter) {
     next = iter->next;





     key = xmlHashComputeKey(table, iter->name, iter->name2,
                      iter->name3);
     if (table->table[key].valid == 0) {
  memcpy(&(table->table[key]), iter, sizeof(xmlHashEntry));
  table->table[key].next = ((void*)0);
  xmlFree(iter);
     } else {
  iter->next = table->table[key].next;
  table->table[key].next = iter;
     }





     iter = next;
 }
    }

    xmlFree(oldtable);






    return(0);
}
