
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
typedef TYPE_2__* xmlDictEntryPtr ;
typedef int xmlDictEntry ;
typedef int xmlChar ;
struct TYPE_9__ {scalar_t__ valid; unsigned long okey; unsigned int len; struct TYPE_9__* next; int const* name; } ;
struct TYPE_8__ {unsigned int limit; unsigned long size; int nbElems; TYPE_2__* dict; struct TYPE_8__* subdict; } ;


 int INT_MAX ;
 int MAX_DICT_HASH ;
 unsigned long MAX_HASH_LEN ;
 unsigned long MIN_DICT_SIZE ;
 int memcmp (int const*,int const*,unsigned int) ;
 unsigned int strlen (char const*) ;
 int * xmlDictAddString (TYPE_1__*,int const*,unsigned int) ;
 unsigned long xmlDictComputeKey (TYPE_1__*,int const*,unsigned int) ;
 scalar_t__ xmlDictGrow (TYPE_1__*,unsigned long) ;
 TYPE_2__* xmlMalloc (int) ;
 int xmlStrncmp (int const*,int const*,unsigned int) ;

const xmlChar *
xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len) {
    unsigned long key, okey, nbi = 0;
    xmlDictEntryPtr entry;
    xmlDictEntryPtr insert;
    const xmlChar *ret;
    unsigned int l;

    if ((dict == ((void*)0)) || (name == ((void*)0)))
 return(((void*)0));

    if (len < 0)
        l = strlen((const char *) name);
    else
        l = len;

    if (((dict->limit > 0) && (l >= dict->limit)) ||
        (l > INT_MAX / 2))
        return(((void*)0));




    okey = xmlDictComputeKey(dict, name, l);
    key = okey % dict->size;
    if (dict->dict[key].valid == 0) {
 insert = ((void*)0);
    } else {
 for (insert = &(dict->dict[key]); insert->next != ((void*)0);
      insert = insert->next) {

     if ((insert->okey == okey) && (insert->len == l)) {
  if (!memcmp(insert->name, name, l))
      return(insert->name);
     }





     nbi++;
 }

 if ((insert->okey == okey) && (insert->len == l)) {
     if (!memcmp(insert->name, name, l))
  return(insert->name);
 }





    }

    if (dict->subdict) {
        unsigned long skey;


        if (((dict->size == MIN_DICT_SIZE) &&
      (dict->subdict->size != MIN_DICT_SIZE)) ||
            ((dict->size != MIN_DICT_SIZE) &&
      (dict->subdict->size == MIN_DICT_SIZE)))
     skey = xmlDictComputeKey(dict->subdict, name, l);
 else
     skey = okey;

 key = skey % dict->subdict->size;
 if (dict->subdict->dict[key].valid != 0) {
     xmlDictEntryPtr tmp;

     for (tmp = &(dict->subdict->dict[key]); tmp->next != ((void*)0);
   tmp = tmp->next) {

  if ((tmp->okey == skey) && (tmp->len == l)) {
      if (!memcmp(tmp->name, name, l))
   return(tmp->name);
  }





  nbi++;
     }

     if ((tmp->okey == skey) && (tmp->len == l)) {
  if (!memcmp(tmp->name, name, l))
      return(tmp->name);
     }





 }
 key = okey % dict->size;
    }

    ret = xmlDictAddString(dict, name, l);
    if (ret == ((void*)0))
        return(((void*)0));
    if (insert == ((void*)0)) {
 entry = &(dict->dict[key]);
    } else {
 entry = xmlMalloc(sizeof(xmlDictEntry));
 if (entry == ((void*)0))
      return(((void*)0));
    }
    entry->name = ret;
    entry->len = l;
    entry->next = ((void*)0);
    entry->valid = 1;
    entry->okey = okey;


    if (insert != ((void*)0))
 insert->next = entry;

    dict->nbElems++;

    if ((nbi > MAX_HASH_LEN) &&
        (dict->size <= ((MAX_DICT_HASH / 2) / MAX_HASH_LEN))) {
 if (xmlDictGrow(dict, MAX_HASH_LEN * 2 * dict->size) != 0)
     return(((void*)0));
    }


    return(ret);
}
