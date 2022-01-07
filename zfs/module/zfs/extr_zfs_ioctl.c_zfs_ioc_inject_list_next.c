
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_guid; int zc_inject_record; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int zio_inject_list_next (int*,int ,int,int *) ;

__attribute__((used)) static int
zfs_ioc_inject_list_next(zfs_cmd_t *zc)
{
 int id = (int)zc->zc_guid;
 int error;

 error = zio_inject_list_next(&id, zc->zc_name, sizeof (zc->zc_name),
     &zc->zc_inject_record);

 zc->zc_guid = id;

 return (error);
}
