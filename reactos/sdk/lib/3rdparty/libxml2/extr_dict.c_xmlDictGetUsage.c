
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlDictStringsPtr ;
typedef TYPE_2__* xmlDictPtr ;
struct TYPE_5__ {TYPE_1__* strings; } ;
struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ size; } ;



size_t
xmlDictGetUsage(xmlDictPtr dict) {
    xmlDictStringsPtr pool;
    size_t limit = 0;

    if (dict == ((void*)0))
 return(0);
    pool = dict->strings;
    while (pool != ((void*)0)) {
        limit += pool->size;
 pool = pool->next;
    }
    return(limit);
}
