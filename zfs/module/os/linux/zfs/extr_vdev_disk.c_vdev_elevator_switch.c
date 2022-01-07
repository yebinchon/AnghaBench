
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int vdev_children; int vdev_path; int vdev_wholedisk; TYPE_1__* vdev_ops; struct TYPE_9__** vdev_child; TYPE_4__* vdev_tsd; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_10__ {TYPE_6__* vd_bdev; } ;
typedef TYPE_4__ vdev_disk_t ;
struct request_queue {int dummy; } ;
struct TYPE_11__ {TYPE_2__* bd_disk; } ;
struct TYPE_8__ {char* disk_name; } ;
struct TYPE_7__ {int vdev_op_leaf; } ;


 int SET_SCHEDULER_CMD ;
 int UMH_NO_WAIT ;
 struct request_queue* bdev_get_queue (TYPE_6__*) ;
 int call_usermodehelper (char*,char**,char**,int ) ;
 int elevator_change (struct request_queue*,char*) ;
 char* kmem_asprintf (int ,char*,char*) ;
 int kmem_strfree (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int zfs_dbgmsg (char*,char*,int ,char*,int) ;

__attribute__((used)) static void
vdev_elevator_switch(vdev_t *v, char *elevator)
{
 vdev_disk_t *vd = v->vdev_tsd;
 struct request_queue *q;
 char *device;
 int error;

 for (int c = 0; c < v->vdev_children; c++)
  vdev_elevator_switch(v->vdev_child[c], elevator);

 if (!v->vdev_ops->vdev_op_leaf || vd->vd_bdev == ((void*)0))
  return;

 q = bdev_get_queue(vd->vd_bdev);
 device = vd->vd_bdev->bd_disk->disk_name;
 if (!v->vdev_wholedisk && strncmp(device, "dm-", 3) != 0)
  return;


 if ((strncmp(elevator, "none", 4) == 0) && (strlen(elevator) == 4))
  return;
 char *argv[] = { "/bin/sh", "-c", ((void*)0), ((void*)0) };
 char *envp[] = { ((void*)0) };

 argv[2] = kmem_asprintf("exec 0</dev/null " "     1>/sys/block/%s/queue/scheduler " "     2>/dev/null; " "echo %s", device, elevator);
 error = call_usermodehelper(argv[0], argv, envp, UMH_NO_WAIT);
 kmem_strfree(argv[2]);

 if (error) {
  zfs_dbgmsg("Unable to set \"%s\" scheduler for %s (%s): %d",
      elevator, v->vdev_path, device, error);
 }
}
