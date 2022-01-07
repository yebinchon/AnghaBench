
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int* tn_member; struct TYPE_4__** tn_next; } ;
typedef TYPE_1__ txg_node_t ;
struct TYPE_5__ {char* tl_offset; int tl_lock; TYPE_1__** tl_head; int tl_spa; } ;
typedef TYPE_2__ txg_list_t ;


 int ASSERT (int) ;
 int TXG_MASK ;
 int TXG_VERIFY (int ,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void *
txg_list_remove(txg_list_t *tl, uint64_t txg)
{
 int t = txg & TXG_MASK;
 txg_node_t *tn;
 void *p = ((void*)0);

 TXG_VERIFY(tl->tl_spa, txg);
 mutex_enter(&tl->tl_lock);
 if ((tn = tl->tl_head[t]) != ((void*)0)) {
  ASSERT(tn->tn_member[t]);
  ASSERT(tn->tn_next[t] == ((void*)0) || tn->tn_next[t]->tn_member[t]);
  p = (char *)tn - tl->tl_offset;
  tl->tl_head[t] = tn->tn_next[t];
  tn->tn_next[t] = ((void*)0);
  tn->tn_member[t] = 0;
 }
 mutex_exit(&tl->tl_lock);

 return (p);
}
