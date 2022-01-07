
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int zio_t ;
struct TYPE_12__ {int iv_attempts_max; int iv_splits; } ;
typedef TYPE_1__ indirect_vsd_t ;
struct TYPE_13__ {int is_children; scalar_t__ is_unique_children; int is_unique_child; TYPE_3__* is_good_child; TYPE_3__* is_child; } ;
typedef TYPE_2__ indirect_split_t ;
struct TYPE_14__ {TYPE_10__* ic_data; } ;
typedef TYPE_3__ indirect_child_t ;
struct TYPE_11__ {int abd_size; } ;


 int EIO ;
 int SET_ERROR (int ) ;
 unsigned long long UINT64_MAX ;
 int abd_zero (TYPE_10__*,int ) ;
 void* list_head (int *) ;
 int list_insert_tail (int *,TYPE_3__*) ;
 scalar_t__ list_is_empty (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int list_remove (int *,TYPE_3__*) ;
 int vdev_indirect_splits_enumerate_randomly (TYPE_1__*,int *) ;

__attribute__((used)) static int
vdev_indirect_splits_damage(indirect_vsd_t *iv, zio_t *zio)
{
 int error;


 for (indirect_split_t *is = list_head(&iv->iv_splits);
     is != ((void*)0); is = list_next(&iv->iv_splits, is)) {
  is->is_unique_children = 0;

  for (int i = 0; i < is->is_children; i++) {
   indirect_child_t *ic = &is->is_child[i];
   if (ic->ic_data != ((void*)0)) {
    is->is_unique_children++;
    list_insert_tail(&is->is_unique_child, ic);
   }
  }

  if (list_is_empty(&is->is_unique_child)) {
   error = SET_ERROR(EIO);
   goto out;
  }
 }





 error = vdev_indirect_splits_enumerate_randomly(iv, zio);
 if (error)
  goto out;
 iv->iv_attempts_max = 1;

 for (indirect_split_t *is = list_head(&iv->iv_splits);
     is != ((void*)0); is = list_next(&iv->iv_splits, is)) {
  for (int c = 0; c < is->is_children; c++) {
   indirect_child_t *ic = &is->is_child[c];

   if (ic == is->is_good_child)
    continue;
   if (ic->ic_data == ((void*)0))
    continue;

   abd_zero(ic->ic_data, ic->ic_data->abd_size);
  }

  iv->iv_attempts_max *= 2;
  if (iv->iv_attempts_max >= (1ULL << 12)) {
   iv->iv_attempts_max = UINT64_MAX;
   break;
  }
 }

out:

 for (indirect_split_t *is = list_head(&iv->iv_splits);
     is != ((void*)0); is = list_next(&iv->iv_splits, is)) {
  indirect_child_t *ic;
  while ((ic = list_head(&is->is_unique_child)) != ((void*)0))
   list_remove(&is->is_unique_child, ic);

  is->is_unique_children = 0;
 }

 return (error);
}
