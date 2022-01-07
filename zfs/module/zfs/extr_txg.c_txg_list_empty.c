
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int tl_lock; } ;
typedef TYPE_1__ txg_list_t ;
typedef int boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int txg_list_empty_impl (TYPE_1__*,int ) ;

boolean_t
txg_list_empty(txg_list_t *tl, uint64_t txg)
{
 mutex_enter(&tl->tl_lock);
 boolean_t ret = txg_list_empty_impl(tl, txg);
 mutex_exit(&tl->tl_lock);

 return (ret);
}
