
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tl_lock; } ;
typedef TYPE_1__ txg_list_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int TXG_SIZE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int txg_list_empty_impl (TYPE_1__*,int) ;

boolean_t
txg_all_lists_empty(txg_list_t *tl)
{
 mutex_enter(&tl->tl_lock);
 for (int i = 0; i < TXG_SIZE; i++) {
  if (!txg_list_empty_impl(tl, i)) {
   mutex_exit(&tl->tl_lock);
   return (B_FALSE);
  }
 }
 mutex_exit(&tl->tl_lock);
 return (B_TRUE);
}
