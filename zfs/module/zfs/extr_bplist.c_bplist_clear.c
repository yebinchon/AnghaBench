
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bpl_lock; int bpl_list; } ;
typedef TYPE_1__ bplist_t ;
typedef int bplist_entry_t ;


 int * bplist_iterate_last_removed ;
 int kmem_free (int *,int) ;
 int * list_head (int *) ;
 int list_remove (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
bplist_clear(bplist_t *bpl)
{
 bplist_entry_t *bpe;

 mutex_enter(&bpl->bpl_lock);
 while ((bpe = list_head(&bpl->bpl_list))) {
  bplist_iterate_last_removed = bpe;
  list_remove(&bpl->bpl_list, bpe);
  kmem_free(bpe, sizeof (*bpe));
 }
 mutex_exit(&bpl->bpl_lock);
}
