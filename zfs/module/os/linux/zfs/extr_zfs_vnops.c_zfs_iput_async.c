
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_func_t ;
struct inode {int i_count; } ;
typedef int objset_t ;
struct TYPE_2__ {int * z_os; } ;


 int ASSERT (int) ;
 TYPE_1__* ITOZSB (struct inode*) ;
 scalar_t__ TASKQID_INVALID ;
 int TQ_SLEEP ;
 int VERIFY (int) ;
 int atomic_read (int *) ;
 int dmu_objset_pool (int *) ;
 int dsl_pool_iput_taskq (int ) ;
 int iput (struct inode*) ;
 scalar_t__ taskq_dispatch (int ,int *,struct inode*,int ) ;

void
zfs_iput_async(struct inode *ip)
{
 objset_t *os = ITOZSB(ip)->z_os;

 ASSERT(atomic_read(&ip->i_count) > 0);
 ASSERT(os != ((void*)0));

 if (atomic_read(&ip->i_count) == 1)
  VERIFY(taskq_dispatch(dsl_pool_iput_taskq(dmu_objset_pool(os)),
      (task_func_t *)iput, ip, TQ_SLEEP) != TASKQID_INVALID);
 else
  iput(ip);
}
