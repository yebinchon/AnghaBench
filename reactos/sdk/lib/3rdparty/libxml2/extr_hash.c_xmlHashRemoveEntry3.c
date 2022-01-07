
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef TYPE_2__* xmlHashEntryPtr ;
typedef int xmlHashEntry ;
typedef int (* xmlHashDeallocator ) (int *,TYPE_2__*) ;
typedef int xmlChar ;
struct TYPE_12__ {scalar_t__ valid; struct TYPE_12__* next; struct TYPE_12__* name3; struct TYPE_12__* name2; struct TYPE_12__* name; int * payload; } ;
struct TYPE_11__ {int nbElems; TYPE_2__* table; int * dict; } ;


 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int xmlFree (TYPE_2__*) ;
 unsigned long xmlHashComputeKey (TYPE_1__*,int const*,int const*,int const*) ;
 scalar_t__ xmlStrEqual (TYPE_2__*,int const*) ;

int
xmlHashRemoveEntry3(xmlHashTablePtr table, const xmlChar *name,
    const xmlChar *name2, const xmlChar *name3, xmlHashDeallocator f) {
    unsigned long key;
    xmlHashEntryPtr entry;
    xmlHashEntryPtr prev = ((void*)0);

    if (table == ((void*)0) || name == ((void*)0))
        return(-1);

    key = xmlHashComputeKey(table, name, name2, name3);
    if (table->table[key].valid == 0) {
        return(-1);
    } else {
        for (entry = &(table->table[key]); entry != ((void*)0); entry = entry->next) {
            if (xmlStrEqual(entry->name, name) &&
                    xmlStrEqual(entry->name2, name2) &&
                    xmlStrEqual(entry->name3, name3)) {
                if ((f != ((void*)0)) && (entry->payload != ((void*)0)))
                    f(entry->payload, entry->name);
                entry->payload = ((void*)0);
  if (table->dict == ((void*)0)) {
      if(entry->name)
   xmlFree(entry->name);
      if(entry->name2)
   xmlFree(entry->name2);
      if(entry->name3)
   xmlFree(entry->name3);
  }
                if(prev) {
                    prev->next = entry->next;
      xmlFree(entry);
  } else {
      if (entry->next == ((void*)0)) {
   entry->valid = 0;
      } else {
   entry = entry->next;
   memcpy(&(table->table[key]), entry, sizeof(xmlHashEntry));
   xmlFree(entry);
      }
  }
                table->nbElems--;
                return(0);
            }
            prev = entry;
        }
        return(-1);
    }
}
