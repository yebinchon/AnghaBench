
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bpo_lock; } ;
typedef TYPE_1__ bpobj_t ;
typedef int boolean_t ;


 int bpobj_is_empty_impl (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
bpobj_is_empty(bpobj_t *bpo)
{
 mutex_enter(&bpo->bpo_lock);
 boolean_t is_empty = bpobj_is_empty_impl(bpo);
 mutex_exit(&bpo->bpo_lock);
 return (is_empty);
}
