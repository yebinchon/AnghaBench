
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlDictStringsPtr ;
typedef TYPE_2__* xmlDictPtr ;
typedef int xmlChar ;
struct TYPE_5__ {struct TYPE_5__* subdict; TYPE_1__* strings; } ;
struct TYPE_4__ {struct TYPE_4__* next; int const* free; int const* array; } ;



int
xmlDictOwns(xmlDictPtr dict, const xmlChar *str) {
    xmlDictStringsPtr pool;

    if ((dict == ((void*)0)) || (str == ((void*)0)))
 return(-1);
    pool = dict->strings;
    while (pool != ((void*)0)) {
        if ((str >= &pool->array[0]) && (str <= pool->free))
     return(1);
 pool = pool->next;
    }
    if (dict->subdict)
        return(xmlDictOwns(dict->subdict, str));
    return(0);
}
