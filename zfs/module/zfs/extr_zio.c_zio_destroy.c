
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_cv; int io_lock; int io_child_list; int io_parent_list; int io_alloc_list; } ;
typedef TYPE_1__ zio_t ;


 int cv_destroy (int *) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int list_destroy (int *) ;
 int metaslab_trace_fini (int *) ;
 int mutex_destroy (int *) ;
 int zio_cache ;

__attribute__((used)) static void
zio_destroy(zio_t *zio)
{
 metaslab_trace_fini(&zio->io_alloc_list);
 list_destroy(&zio->io_parent_list);
 list_destroy(&zio->io_child_list);
 mutex_destroy(&zio->io_lock);
 cv_destroy(&zio->io_cv);
 kmem_cache_free(zio_cache, zio);
}
