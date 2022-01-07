
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef TYPE_2__* xmlHashEntryPtr ;
typedef int xmlHashEntry ;
typedef int (* xmlHashDeallocator ) (void*,int const*) ;
typedef int const xmlChar ;
struct TYPE_7__ {scalar_t__ valid; struct TYPE_7__* next; void* payload; int const* name3; int const* name2; int const* name; } ;
struct TYPE_6__ {int nbElems; int * dict; TYPE_2__* table; } ;


 int const* xmlDictLookup (int *,int const*,int) ;
 int xmlDictOwns (int *,int const*) ;
 unsigned long xmlHashComputeKey (TYPE_1__*,int const*,int const*,int const*) ;
 TYPE_2__* xmlMalloc (int) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 void* xmlStrdup (int const*) ;

int
xmlHashUpdateEntry3(xmlHashTablePtr table, const xmlChar *name,
            const xmlChar *name2, const xmlChar *name3,
     void *userdata, xmlHashDeallocator f) {
    unsigned long key;
    xmlHashEntryPtr entry;
    xmlHashEntryPtr insert;

    if ((table == ((void*)0)) || name == ((void*)0))
 return(-1);




    if (table->dict) {
        if (!xmlDictOwns(table->dict, name)) {
     name = xmlDictLookup(table->dict, name, -1);
     if (name == ((void*)0))
         return(-1);
 }
        if ((name2 != ((void*)0)) && (!xmlDictOwns(table->dict, name2))) {
     name2 = xmlDictLookup(table->dict, name2, -1);
     if (name2 == ((void*)0))
         return(-1);
 }
        if ((name3 != ((void*)0)) && (!xmlDictOwns(table->dict, name3))) {
     name3 = xmlDictLookup(table->dict, name3, -1);
     if (name3 == ((void*)0))
         return(-1);
 }
    }




    key = xmlHashComputeKey(table, name, name2, name3);
    if (table->table[key].valid == 0) {
 insert = ((void*)0);
    } else {
        if (table ->dict) {
     for (insert = &(table->table[key]); insert->next != ((void*)0);
   insert = insert->next) {
  if ((insert->name == name) &&
      (insert->name2 == name2) &&
      (insert->name3 == name3)) {
      if (f)
   f(insert->payload, insert->name);
      insert->payload = userdata;
      return(0);
  }
     }
     if ((insert->name == name) &&
  (insert->name2 == name2) &&
  (insert->name3 == name3)) {
  if (f)
      f(insert->payload, insert->name);
  insert->payload = userdata;
  return(0);
     }
 } else {
     for (insert = &(table->table[key]); insert->next != ((void*)0);
   insert = insert->next) {
  if ((xmlStrEqual(insert->name, name)) &&
      (xmlStrEqual(insert->name2, name2)) &&
      (xmlStrEqual(insert->name3, name3))) {
      if (f)
   f(insert->payload, insert->name);
      insert->payload = userdata;
      return(0);
  }
     }
     if ((xmlStrEqual(insert->name, name)) &&
  (xmlStrEqual(insert->name2, name2)) &&
  (xmlStrEqual(insert->name3, name3))) {
  if (f)
      f(insert->payload, insert->name);
  insert->payload = userdata;
  return(0);
     }
 }
    }

    if (insert == ((void*)0)) {
 entry = &(table->table[key]);
    } else {
 entry = xmlMalloc(sizeof(xmlHashEntry));
 if (entry == ((void*)0))
      return(-1);
    }

    if (table->dict != ((void*)0)) {
        entry->name = (xmlChar *) name;
        entry->name2 = (xmlChar *) name2;
        entry->name3 = (xmlChar *) name3;
    } else {
 entry->name = xmlStrdup(name);
 entry->name2 = xmlStrdup(name2);
 entry->name3 = xmlStrdup(name3);
    }
    entry->payload = userdata;
    entry->next = ((void*)0);
    entry->valid = 1;
    table->nbElems++;


    if (insert != ((void*)0)) {
 insert->next = entry;
    }
    return(0);
}
