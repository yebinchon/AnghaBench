
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
typedef TYPE_2__* xmlDictEntryPtr ;
typedef int xmlChar ;
struct TYPE_6__ {scalar_t__ valid; unsigned long okey; unsigned int len; int const* name; struct TYPE_6__* next; } ;
struct TYPE_5__ {unsigned int limit; unsigned long size; TYPE_2__* dict; struct TYPE_5__* subdict; } ;


 int INT_MAX ;
 unsigned long MIN_DICT_SIZE ;
 int memcmp (int const*,int const*,unsigned int) ;
 unsigned int strlen (char const*) ;
 unsigned long xmlDictComputeKey (TYPE_1__*,int const*,unsigned int) ;
 int xmlStrncmp (int const*,int const*,unsigned int) ;

const xmlChar *
xmlDictExists(xmlDictPtr dict, const xmlChar *name, int len) {
    unsigned long key, okey, nbi = 0;
    xmlDictEntryPtr insert;
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
    }


    return(((void*)0));
}
