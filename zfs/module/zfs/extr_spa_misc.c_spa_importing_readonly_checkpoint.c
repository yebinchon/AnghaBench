
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_import_flags; scalar_t__ spa_mode; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;


 scalar_t__ FREAD ;
 int ZFS_IMPORT_CHECKPOINT ;

boolean_t
spa_importing_readonly_checkpoint(spa_t *spa)
{
 return ((spa->spa_import_flags & ZFS_IMPORT_CHECKPOINT) &&
     spa->spa_mode == FREAD);
}
