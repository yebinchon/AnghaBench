
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int io_parent_list; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_10__ {TYPE_1__* zl_parent; TYPE_1__* zl_child; } ;
typedef TYPE_2__ zio_link_t ;
typedef int list_t ;


 int ASSERT (int) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;

zio_t *
zio_walk_parents(zio_t *cio, zio_link_t **zl)
{
 list_t *pl = &cio->io_parent_list;

 *zl = (*zl == ((void*)0)) ? list_head(pl) : list_next(pl, *zl);
 if (*zl == ((void*)0))
  return (((void*)0));

 ASSERT((*zl)->zl_child == cio);
 return ((*zl)->zl_parent);
}
