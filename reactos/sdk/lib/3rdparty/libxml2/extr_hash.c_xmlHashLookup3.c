
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef TYPE_2__* xmlHashEntryPtr ;
typedef int xmlChar ;
struct TYPE_6__ {scalar_t__ valid; void* payload; int const* name3; int const* name2; int const* name; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* table; scalar_t__ dict; } ;


 unsigned long xmlHashComputeKey (TYPE_1__*,int const*,int const*,int const*) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;

void *
xmlHashLookup3(xmlHashTablePtr table, const xmlChar *name,
        const xmlChar *name2, const xmlChar *name3) {
    unsigned long key;
    xmlHashEntryPtr entry;

    if (table == ((void*)0))
 return(((void*)0));
    if (name == ((void*)0))
 return(((void*)0));
    key = xmlHashComputeKey(table, name, name2, name3);
    if (table->table[key].valid == 0)
 return(((void*)0));
    if (table->dict) {
 for (entry = &(table->table[key]); entry != ((void*)0); entry = entry->next) {
     if ((entry->name == name) &&
  (entry->name2 == name2) &&
  (entry->name3 == name3))
  return(entry->payload);
 }
    }
    for (entry = &(table->table[key]); entry != ((void*)0); entry = entry->next) {
 if ((xmlStrEqual(entry->name, name)) &&
     (xmlStrEqual(entry->name2, name2)) &&
     (xmlStrEqual(entry->name3, name3)))
     return(entry->payload);
    }
    return(((void*)0));
}
