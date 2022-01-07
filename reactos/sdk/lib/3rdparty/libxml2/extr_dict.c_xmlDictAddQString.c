
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlDictStringsPtr ;
typedef int xmlDictStrings ;
typedef TYPE_2__* xmlDictPtr ;
typedef int xmlChar ;
struct TYPE_6__ {size_t limit; TYPE_1__* strings; } ;
struct TYPE_5__ {size_t size; scalar_t__ nbStrings; int * free; struct TYPE_5__* next; int * array; int * end; } ;


 int fprintf (int ,char*) ;
 int memcpy (int *,int const*,unsigned int) ;
 int stderr ;
 int const* xmlDictAddString (TYPE_2__*,int const*,unsigned int) ;
 scalar_t__ xmlMalloc (int) ;

__attribute__((used)) static const xmlChar *
xmlDictAddQString(xmlDictPtr dict, const xmlChar *prefix, unsigned int plen,
                 const xmlChar *name, unsigned int namelen)
{
    xmlDictStringsPtr pool;
    const xmlChar *ret;
    size_t size = 0;
    size_t limit = 0;

    if (prefix == ((void*)0)) return(xmlDictAddString(dict, name, namelen));




    pool = dict->strings;
    while (pool != ((void*)0)) {
 if ((size_t)(pool->end - pool->free) > namelen + plen + 1)
     goto found_pool;
 if (pool->size > size) size = pool->size;
        limit += pool->size;
 pool = pool->next;
    }



    if (pool == ((void*)0)) {
        if ((dict->limit > 0) && (limit > dict->limit)) {
            return(((void*)0));
        }

        if (size == 0) size = 1000;
 else size *= 4;
        if (size < 4 * (namelen + plen + 1))
     size = 4 * (namelen + plen + 1);
 pool = (xmlDictStringsPtr) xmlMalloc(sizeof(xmlDictStrings) + size);
 if (pool == ((void*)0))
     return(((void*)0));
 pool->size = size;
 pool->nbStrings = 0;
 pool->free = &pool->array[0];
 pool->end = &pool->array[size];
 pool->next = dict->strings;
 dict->strings = pool;



    }
found_pool:
    ret = pool->free;
    memcpy(pool->free, prefix, plen);
    pool->free += plen;
    *(pool->free++) = ':';
    memcpy(pool->free, name, namelen);
    pool->free += namelen;
    *(pool->free++) = 0;
    pool->nbStrings++;
    return(ret);
}
