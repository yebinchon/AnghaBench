
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int se_refcount; int se_taskqid; struct dentry* se_root_dentry; int se_objsetid; int * se_spa; void* se_path; void* se_name; } ;
typedef TYPE_1__ zfs_snapentry_t ;
typedef int uint64_t ;
struct dentry {int dummy; } ;
typedef int spa_t ;


 int KM_SLEEP ;
 int TASKQID_INVALID ;
 void* kmem_strdup (char*) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static zfs_snapentry_t *
zfsctl_snapshot_alloc(char *full_name, char *full_path, spa_t *spa,
    uint64_t objsetid, struct dentry *root_dentry)
{
 zfs_snapentry_t *se;

 se = kmem_zalloc(sizeof (zfs_snapentry_t), KM_SLEEP);

 se->se_name = kmem_strdup(full_name);
 se->se_path = kmem_strdup(full_path);
 se->se_spa = spa;
 se->se_objsetid = objsetid;
 se->se_root_dentry = root_dentry;
 se->se_taskqid = TASKQID_INVALID;

 zfs_refcount_create(&se->se_refcount);

 return (se);
}
