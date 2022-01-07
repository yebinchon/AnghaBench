
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dictType ;
struct TYPE_3__ {int rehashidx; scalar_t__ iterators; void* privdata; int * type; int * ht; } ;
typedef TYPE_1__ dict ;


 int DICT_OK ;
 int _dictReset (int *) ;

int _dictInit(dict *d, dictType *type,
        void *privDataPtr)
{
    _dictReset(&d->ht[0]);
    _dictReset(&d->ht[1]);
    d->type = type;
    d->privdata = privDataPtr;
    d->rehashidx = -1;
    d->iterators = 0;
    return DICT_OK;
}
