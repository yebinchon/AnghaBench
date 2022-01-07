
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int rl_lock; int rl_tree; } ;
typedef TYPE_1__ zfs_rangelock_t ;
struct TYPE_13__ {scalar_t__ lr_offset; scalar_t__ lr_length; scalar_t__ lr_type; int lr_read_cv; void* lr_read_wanted; scalar_t__ lr_write_wanted; } ;
typedef TYPE_2__ zfs_locked_range_t ;
typedef scalar_t__ uint64_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int AVL_AFTER ;
 int AVL_BEFORE ;
 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 void* B_TRUE ;
 int CV_DEFAULT ;
 scalar_t__ RL_WRITER ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 TYPE_2__* avl_nearest (int *,int ,int ) ;
 int cv_init (int *,int *,int ,int *) ;
 int cv_wait (int *,int *) ;
 int zfs_rangelock_add_reader (int *,TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static void
zfs_rangelock_enter_reader(zfs_rangelock_t *rl, zfs_locked_range_t *new)
{
 avl_tree_t *tree = &rl->rl_tree;
 zfs_locked_range_t *prev, *next;
 avl_index_t where;
 uint64_t off = new->lr_offset;
 uint64_t len = new->lr_length;




retry:
 prev = avl_find(tree, new, &where);
 if (prev == ((void*)0))
  prev = avl_nearest(tree, where, AVL_BEFORE);




 if (prev && (off < prev->lr_offset + prev->lr_length)) {
  if ((prev->lr_type == RL_WRITER) || (prev->lr_write_wanted)) {
   if (!prev->lr_read_wanted) {
    cv_init(&prev->lr_read_cv,
        ((void*)0), CV_DEFAULT, ((void*)0));
    prev->lr_read_wanted = B_TRUE;
   }
   cv_wait(&prev->lr_read_cv, &rl->rl_lock);
   goto retry;
  }
  if (off + len < prev->lr_offset + prev->lr_length)
   goto got_lock;
 }





 if (prev != ((void*)0))
  next = AVL_NEXT(tree, prev);
 else
  next = avl_nearest(tree, where, AVL_AFTER);
 for (; next != ((void*)0); next = AVL_NEXT(tree, next)) {
  if (off + len <= next->lr_offset)
   goto got_lock;
  if ((next->lr_type == RL_WRITER) || (next->lr_write_wanted)) {
   if (!next->lr_read_wanted) {
    cv_init(&next->lr_read_cv,
        ((void*)0), CV_DEFAULT, ((void*)0));
    next->lr_read_wanted = B_TRUE;
   }
   cv_wait(&next->lr_read_cv, &rl->rl_lock);
   goto retry;
  }
  if (off + len <= next->lr_offset + next->lr_length)
   goto got_lock;
 }

got_lock:




 zfs_rangelock_add_reader(tree, new, prev, where);
}
