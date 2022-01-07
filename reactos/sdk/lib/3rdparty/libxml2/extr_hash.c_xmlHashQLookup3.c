
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef TYPE_2__* xmlHashEntryPtr ;
typedef int xmlChar ;
struct TYPE_6__ {scalar_t__ valid; void* payload; int name3; int name2; int name; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* table; } ;


 unsigned long xmlHashComputeQKey (TYPE_1__*,int const*,int const*,int const*,int const*,int const*,int const*) ;
 scalar_t__ xmlStrQEqual (int const*,int const*,int ) ;

void *
xmlHashQLookup3(xmlHashTablePtr table,
                const xmlChar *prefix, const xmlChar *name,
  const xmlChar *prefix2, const xmlChar *name2,
  const xmlChar *prefix3, const xmlChar *name3) {
    unsigned long key;
    xmlHashEntryPtr entry;

    if (table == ((void*)0))
 return(((void*)0));
    if (name == ((void*)0))
 return(((void*)0));
    key = xmlHashComputeQKey(table, prefix, name, prefix2,
                             name2, prefix3, name3);
    if (table->table[key].valid == 0)
 return(((void*)0));
    for (entry = &(table->table[key]); entry != ((void*)0); entry = entry->next) {
 if ((xmlStrQEqual(prefix, name, entry->name)) &&
     (xmlStrQEqual(prefix2, name2, entry->name2)) &&
     (xmlStrQEqual(prefix3, name3, entry->name3)))
     return(entry->payload);
    }
    return(((void*)0));
}
