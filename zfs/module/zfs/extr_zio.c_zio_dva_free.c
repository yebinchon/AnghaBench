
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_txg; int io_bp; int io_spa; } ;
typedef TYPE_1__ zio_t ;


 int B_FALSE ;
 int metaslab_free (int ,int ,int ,int ) ;

__attribute__((used)) static zio_t *
zio_dva_free(zio_t *zio)
{
 metaslab_free(zio->io_spa, zio->io_bp, zio->io_txg, B_FALSE);

 return (zio);
}
