
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_9__ {scalar_t__ zbc_injected; } ;
typedef TYPE_2__ zio_bad_cksum_t ;
struct TYPE_10__ {int rm_ecksuminjected; } ;
typedef TYPE_3__ raidz_map_t ;


 int bzero (TYPE_2__*,int) ;
 int zio_checksum_error (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int
raidz_checksum_verify(zio_t *zio)
{
 zio_bad_cksum_t zbc;
 raidz_map_t *rm = zio->io_vsd;

 bzero(&zbc, sizeof (zio_bad_cksum_t));

 int ret = zio_checksum_error(zio, &zbc);
 if (ret != 0 && zbc.zbc_injected != 0)
  rm->rm_ecksuminjected = 1;

 return (ret);
}
