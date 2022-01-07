
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int io_lock; int io_child_list; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_10__ {TYPE_1__* zl_child; TYPE_1__* zl_parent; } ;
typedef TYPE_2__ zio_link_t ;
typedef int list_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;

zio_t *
zio_walk_children(zio_t *pio, zio_link_t **zl)
{
 list_t *cl = &pio->io_child_list;

 ASSERT(MUTEX_HELD(&pio->io_lock));

 *zl = (*zl == ((void*)0)) ? list_head(cl) : list_next(cl, *zl);
 if (*zl == ((void*)0))
  return (((void*)0));

 ASSERT((*zl)->zl_parent == pio);
 return ((*zl)->zl_child);
}
