
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_name; int zc_guid; int zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int boolean_t ;


 int spa_export (int ,int *,int ,int ) ;
 int zfs_log_history (TYPE_1__*) ;

__attribute__((used)) static int
zfs_ioc_pool_export(zfs_cmd_t *zc)
{
 int error;
 boolean_t force = (boolean_t)zc->zc_cookie;
 boolean_t hardforce = (boolean_t)zc->zc_guid;

 zfs_log_history(zc);
 error = spa_export(zc->zc_name, ((void*)0), force, hardforce);

 return (error);
}
