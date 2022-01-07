
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
typedef struct _xmlDictEntry* xmlDictEntryPtr ;
typedef int xmlDictEntry ;
struct _xmlDictEntry {scalar_t__ valid; unsigned long okey; struct _xmlDictEntry* next; int len; int name; } ;
struct TYPE_4__ {size_t size; struct _xmlDictEntry* dict; } ;


 size_t MIN_DICT_SIZE ;
 int fprintf (int ,char*) ;
 int memcpy (struct _xmlDictEntry*,struct _xmlDictEntry*,int) ;
 int memset (struct _xmlDictEntry*,int ,size_t) ;
 int stderr ;
 unsigned long xmlDictComputeKey (TYPE_1__*,int ,int ) ;
 int xmlFree (struct _xmlDictEntry*) ;
 int xmlGenericError (int ,char*,size_t,size_t,unsigned long) ;
 int xmlGenericErrorContext ;
 void* xmlMalloc (int) ;

__attribute__((used)) static int
xmlDictGrow(xmlDictPtr dict, size_t size) {
    unsigned long key, okey;
    size_t oldsize, i;
    xmlDictEntryPtr iter, next;
    struct _xmlDictEntry *olddict;



    int ret = 0;
    int keep_keys = 1;

    if (dict == ((void*)0))
 return(-1);
    if (size < 8)
        return(-1);
    if (size > 8 * 2048)
 return(-1);





    oldsize = dict->size;
    olddict = dict->dict;
    if (olddict == ((void*)0))
        return(-1);
    if (oldsize == MIN_DICT_SIZE)
        keep_keys = 0;

    dict->dict = xmlMalloc(size * sizeof(xmlDictEntry));
    if (dict->dict == ((void*)0)) {
 dict->dict = olddict;
 return(-1);
    }
    memset(dict->dict, 0, size * sizeof(xmlDictEntry));
    dict->size = size;







    for (i = 0; i < oldsize; i++) {
 if (olddict[i].valid == 0)
     continue;

 if (keep_keys)
     okey = olddict[i].okey;
 else
     okey = xmlDictComputeKey(dict, olddict[i].name, olddict[i].len);
 key = okey % dict->size;

 if (dict->dict[key].valid == 0) {
     memcpy(&(dict->dict[key]), &(olddict[i]), sizeof(xmlDictEntry));
     dict->dict[key].next = ((void*)0);
     dict->dict[key].okey = okey;
 } else {
     xmlDictEntryPtr entry;

     entry = xmlMalloc(sizeof(xmlDictEntry));
     if (entry != ((void*)0)) {
  entry->name = olddict[i].name;
  entry->len = olddict[i].len;
  entry->okey = okey;
  entry->next = dict->dict[key].next;
  entry->valid = 1;
  dict->dict[key].next = entry;
     } else {




         ret = -1;
     }
 }



    }

    for (i = 0; i < oldsize; i++) {
 iter = olddict[i].next;
 while (iter) {
     next = iter->next;





     if (keep_keys)
  okey = iter->okey;
     else
  okey = xmlDictComputeKey(dict, iter->name, iter->len);
     key = okey % dict->size;
     if (dict->dict[key].valid == 0) {
  memcpy(&(dict->dict[key]), iter, sizeof(xmlDictEntry));
  dict->dict[key].next = ((void*)0);
  dict->dict[key].valid = 1;
  dict->dict[key].okey = okey;
  xmlFree(iter);
     } else {
  iter->next = dict->dict[key].next;
  iter->okey = okey;
  dict->dict[key].next = iter;
     }





     iter = next;
 }
    }

    xmlFree(olddict);






    return(ret);
}
