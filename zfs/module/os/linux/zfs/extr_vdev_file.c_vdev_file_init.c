
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int MAX (int ,int) ;
 int TASKQ_DYNAMIC ;
 int VERIFY (int ) ;
 int boot_ncpus ;
 int minclsyspri ;
 int taskq_create (char*,int ,int ,int ,int ,int ) ;
 int vdev_file_taskq ;

void
vdev_file_init(void)
{
 vdev_file_taskq = taskq_create("z_vdev_file", MAX(boot_ncpus, 16),
     minclsyspri, boot_ncpus, INT_MAX, TASKQ_DYNAMIC);

 VERIFY(vdev_file_taskq);
}
