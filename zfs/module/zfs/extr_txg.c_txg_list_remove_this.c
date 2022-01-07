
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__* tn_member; struct TYPE_4__** tn_next; } ;
typedef TYPE_1__ txg_node_t ;
struct TYPE_5__ {char* tl_offset; int tl_lock; TYPE_1__** tl_head; int tl_spa; } ;
typedef TYPE_2__ txg_list_t ;


 int TXG_MASK ;
 int TXG_VERIFY (int ,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void *
txg_list_remove_this(txg_list_t *tl, void *p, uint64_t txg)
{
 int t = txg & TXG_MASK;
 txg_node_t *tn, **tp;

 TXG_VERIFY(tl->tl_spa, txg);
 mutex_enter(&tl->tl_lock);

 for (tp = &tl->tl_head[t]; (tn = *tp) != ((void*)0); tp = &tn->tn_next[t]) {
  if ((char *)tn - tl->tl_offset == p) {
   *tp = tn->tn_next[t];
   tn->tn_next[t] = ((void*)0);
   tn->tn_member[t] = 0;
   mutex_exit(&tl->tl_lock);
   return (p);
  }
 }

 mutex_exit(&tl->tl_lock);

 return (((void*)0));
}
