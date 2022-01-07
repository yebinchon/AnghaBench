
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {int sm_status; int sm_lock; int sm_total; int sm_done; scalar_t__ sm_verbose; int sm_options; int sm_proto; int sm_flags; int sm_op; } ;
typedef TYPE_1__ share_mount_state_t ;


 int B_FALSE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int report_mount_progress (int ,int ) ;
 int share_mount_one (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
share_mount_one_cb(zfs_handle_t *zhp, void *arg)
{
 share_mount_state_t *sms = arg;
 int ret;

 ret = share_mount_one(zhp, sms->sm_op, sms->sm_flags, sms->sm_proto,
     B_FALSE, sms->sm_options);

 pthread_mutex_lock(&sms->sm_lock);
 if (ret != 0)
  sms->sm_status = ret;
 sms->sm_done++;
 if (sms->sm_verbose)
  report_mount_progress(sms->sm_done, sms->sm_total);
 pthread_mutex_unlock(&sms->sm_lock);
 return (ret);
}
