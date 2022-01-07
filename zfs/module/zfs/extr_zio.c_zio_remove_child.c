
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int io_lock; int io_parent_count; int io_child_count; int io_parent_list; int io_child_list; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_9__ {TYPE_1__* zl_child; TYPE_1__* zl_parent; } ;
typedef TYPE_2__ zio_link_t ;


 int ASSERT (int) ;
 int kmem_cache_free (int ,TYPE_2__*) ;
 int list_remove (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zio_link_cache ;

__attribute__((used)) static void
zio_remove_child(zio_t *pio, zio_t *cio, zio_link_t *zl)
{
 ASSERT(zl->zl_parent == pio);
 ASSERT(zl->zl_child == cio);

 mutex_enter(&pio->io_lock);
 mutex_enter(&cio->io_lock);

 list_remove(&pio->io_child_list, zl);
 list_remove(&cio->io_parent_list, zl);

 pio->io_child_count--;
 cio->io_parent_count--;

 mutex_exit(&cio->io_lock);
 mutex_exit(&pio->io_lock);
 kmem_cache_free(zio_link_cache, zl);
}
