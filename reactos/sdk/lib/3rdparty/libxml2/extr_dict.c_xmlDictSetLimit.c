
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
struct TYPE_3__ {size_t limit; } ;



size_t
xmlDictSetLimit(xmlDictPtr dict, size_t limit) {
    size_t ret;

    if (dict == ((void*)0))
 return(0);
    ret = dict->limit;
    dict->limit = limit;
    return(ret);
}
