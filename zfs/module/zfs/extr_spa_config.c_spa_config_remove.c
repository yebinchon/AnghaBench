
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
typedef int uio_seg_t ;
struct TYPE_3__ {int scd_path; } ;
typedef TYPE_1__ spa_config_dirent_t ;


 int FSYNC ;
 int FTRUNC ;
 int FWRITE ;
 int RMFILE ;
 int UIO_SYSSPACE ;
 int VOP_CLOSE (int *,int ,int,int ,int ,int *) ;
 int VOP_FSYNC (int *,int ,int ,int *) ;
 int kcred ;
 int vn_open (int ,int ,int,int,int **,int ,int ) ;
 int vn_remove (int ,int ,int ) ;

__attribute__((used)) static int
spa_config_remove(spa_config_dirent_t *dp)
{
 return (vn_remove(dp->scd_path, UIO_SYSSPACE, RMFILE));

}
