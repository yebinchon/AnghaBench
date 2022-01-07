
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
typedef TYPE_2__* xmlDictEntryPtr ;
typedef int xmlDictEntry ;
typedef int xmlChar ;
struct TYPE_10__ {scalar_t__ valid; unsigned long okey; unsigned int len; struct TYPE_10__* next; int const* name; } ;
struct TYPE_9__ {unsigned long size; int nbElems; TYPE_2__* dict; struct TYPE_9__* subdict; } ;


 int MAX_DICT_HASH ;
 unsigned long MAX_HASH_LEN ;
 unsigned long MIN_DICT_SIZE ;
 unsigned int strlen (char const*) ;
 int * xmlDictAddQString (TYPE_1__*,int const*,unsigned int,int const*,unsigned int) ;
 unsigned long xmlDictComputeQKey (TYPE_1__*,int const*,unsigned int,int const*,unsigned int) ;
 int xmlDictGrow (TYPE_1__*,unsigned long) ;
 int const* xmlDictLookup (TYPE_1__*,int const*,int) ;
 TYPE_2__* xmlMalloc (int) ;
 scalar_t__ xmlStrQEqual (int const*,int const*,int const*) ;

const xmlChar *
xmlDictQLookup(xmlDictPtr dict, const xmlChar *prefix, const xmlChar *name) {
    unsigned long okey, key, nbi = 0;
    xmlDictEntryPtr entry;
    xmlDictEntryPtr insert;
    const xmlChar *ret;
    unsigned int len, plen, l;

    if ((dict == ((void*)0)) || (name == ((void*)0)))
 return(((void*)0));
    if (prefix == ((void*)0))
        return(xmlDictLookup(dict, name, -1));

    l = len = strlen((const char *) name);
    plen = strlen((const char *) prefix);
    len += 1 + plen;




    okey = xmlDictComputeQKey(dict, prefix, plen, name, l);
    key = okey % dict->size;
    if (dict->dict[key].valid == 0) {
 insert = ((void*)0);
    } else {
 for (insert = &(dict->dict[key]); insert->next != ((void*)0);
      insert = insert->next) {
     if ((insert->okey == okey) && (insert->len == len) &&
         (xmlStrQEqual(prefix, name, insert->name)))
  return(insert->name);
     nbi++;
 }
 if ((insert->okey == okey) && (insert->len == len) &&
     (xmlStrQEqual(prefix, name, insert->name)))
     return(insert->name);
    }

    if (dict->subdict) {
        unsigned long skey;


        if (((dict->size == MIN_DICT_SIZE) &&
      (dict->subdict->size != MIN_DICT_SIZE)) ||
            ((dict->size != MIN_DICT_SIZE) &&
      (dict->subdict->size == MIN_DICT_SIZE)))
     skey = xmlDictComputeQKey(dict->subdict, prefix, plen, name, l);
 else
     skey = okey;

 key = skey % dict->subdict->size;
 if (dict->subdict->dict[key].valid != 0) {
     xmlDictEntryPtr tmp;
     for (tmp = &(dict->subdict->dict[key]); tmp->next != ((void*)0);
   tmp = tmp->next) {
  if ((tmp->okey == skey) && (tmp->len == len) &&
      (xmlStrQEqual(prefix, name, tmp->name)))
      return(tmp->name);
  nbi++;
     }
     if ((tmp->okey == skey) && (tmp->len == len) &&
  (xmlStrQEqual(prefix, name, tmp->name)))
  return(tmp->name);
 }
 key = okey % dict->size;
    }

    ret = xmlDictAddQString(dict, prefix, plen, name, l);
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
    entry->len = len;
    entry->next = ((void*)0);
    entry->valid = 1;
    entry->okey = okey;

    if (insert != ((void*)0))
 insert->next = entry;

    dict->nbElems++;

    if ((nbi > MAX_HASH_LEN) &&
        (dict->size <= ((MAX_DICT_HASH / 2) / MAX_HASH_LEN)))
 xmlDictGrow(dict, MAX_HASH_LEN * 2 * dict->size);


    return(ret);
}
