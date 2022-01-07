
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tl_lock; } ;
typedef TYPE_1__ txg_list_t ;


 int ASSERT (int ) ;
 int TXG_SIZE ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int txg_list_empty_impl (TYPE_1__*,int) ;

void
txg_list_destroy(txg_list_t *tl)
{
 int t;

 mutex_enter(&tl->tl_lock);
 for (t = 0; t < TXG_SIZE; t++)
  ASSERT(txg_list_empty_impl(tl, t));
 mutex_exit(&tl->tl_lock);

 mutex_destroy(&tl->tl_lock);
}
