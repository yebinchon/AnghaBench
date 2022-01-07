
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_hooks_t ;
struct TYPE_7__ {TYPE_2__* blocks; } ;
typedef TYPE_1__ base_t ;
struct TYPE_8__ {int size; struct TYPE_8__* next; } ;
typedef TYPE_2__ base_block_t ;


 int * base_extent_hooks_get (TYPE_1__*) ;
 int base_ind_get (TYPE_1__*) ;
 int base_unmap (int *,int *,int ,TYPE_2__*,int ) ;

void
base_delete(tsdn_t *tsdn, base_t *base) {
 extent_hooks_t *extent_hooks = base_extent_hooks_get(base);
 base_block_t *next = base->blocks;
 do {
  base_block_t *block = next;
  next = block->next;
  base_unmap(tsdn, extent_hooks, base_ind_get(base), block,
      block->size);
 } while (next != ((void*)0));
}
