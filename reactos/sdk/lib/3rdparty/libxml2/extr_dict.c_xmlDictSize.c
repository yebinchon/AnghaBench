
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* xmlDictPtr ;
struct TYPE_5__ {int nbElems; TYPE_1__* subdict; } ;
struct TYPE_4__ {int nbElems; } ;



int
xmlDictSize(xmlDictPtr dict) {
    if (dict == ((void*)0))
 return(-1);
    if (dict->subdict)
        return(dict->nbElems + dict->subdict->nbElems);
    return(dict->nbElems);
}
