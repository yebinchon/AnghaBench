
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_size; int io_abd; } ;
typedef TYPE_1__ zio_t ;
typedef int raidz_map_t ;


 int raidz_free (int ,int ) ;
 int umem_free (TYPE_1__*,int) ;
 int vdev_raidz_map_free (int *) ;

__attribute__((used)) static void
fini_raidz_map(zio_t **zio, raidz_map_t **rm)
{
 vdev_raidz_map_free(*rm);
 raidz_free((*zio)->io_abd, (*zio)->io_size);
 umem_free(*zio, sizeof (zio_t));

 *zio = ((void*)0);
 *rm = ((void*)0);
}
