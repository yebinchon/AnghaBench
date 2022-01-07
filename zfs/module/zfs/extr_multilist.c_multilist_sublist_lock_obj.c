
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* ml_index_func ) (TYPE_1__*,void*) ;} ;
typedef TYPE_1__ multilist_t ;
typedef int multilist_sublist_t ;


 int * multilist_sublist_lock (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*,void*) ;

multilist_sublist_t *
multilist_sublist_lock_obj(multilist_t *ml, void *obj)
{
 return (multilist_sublist_lock(ml, ml->ml_index_func(ml, obj)));
}
