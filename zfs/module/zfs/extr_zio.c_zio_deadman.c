
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int spa_t ;





 int fm_panic (char*,char*,char*) ;
 int spa_get_deadman_failmode (int *) ;
 char* spa_name (int *) ;
 scalar_t__ spa_suspended (int *) ;
 int zfs_dbgmsg (char*,char*,char*) ;
 int zfs_deadman_enabled ;
 int zio_deadman_impl (TYPE_1__*,int ) ;

void
zio_deadman(zio_t *pio, char *tag)
{
 spa_t *spa = pio->io_spa;
 char *name = spa_name(spa);

 if (!zfs_deadman_enabled || spa_suspended(spa))
  return;

 zio_deadman_impl(pio, 0);

 switch (spa_get_deadman_failmode(spa)) {
 case 128:
  zfs_dbgmsg("%s waiting for hung I/O to pool '%s'", tag, name);
  break;

 case 130:
  zfs_dbgmsg("%s restarting hung I/O for pool '%s'", tag, name);
  break;

 case 129:
  fm_panic("%s determined I/O to pool '%s' is hung.", tag, name);
  break;
 }
}
