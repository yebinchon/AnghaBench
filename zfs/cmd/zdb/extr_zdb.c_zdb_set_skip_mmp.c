
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_import_flags; } ;
typedef TYPE_1__ spa_t ;


 int ZFS_IMPORT_SKIP_MMP ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* spa_lookup (char*) ;
 int spa_namespace_lock ;

__attribute__((used)) static void
zdb_set_skip_mmp(char *target)
{
 spa_t *spa;





 mutex_enter(&spa_namespace_lock);
 if ((spa = spa_lookup(target)) != ((void*)0)) {
  spa->spa_import_flags |= ZFS_IMPORT_SKIP_MMP;
 }
 mutex_exit(&spa_namespace_lock);
}
