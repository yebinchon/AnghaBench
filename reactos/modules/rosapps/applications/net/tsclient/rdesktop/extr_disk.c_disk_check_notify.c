
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fileinfo {int notify; int info_class; int pdir; } ;
struct TYPE_4__ {struct fileinfo* fileinfo; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef scalar_t__ NTSTATUS ;
typedef size_t NTHANDLE ;
typedef int NOTIFY ;


 scalar_t__ NotifyInfo (TYPE_1__*,size_t,int ,int *) ;
 scalar_t__ STATUS_INVALID_DEVICE_REQUEST ;
 scalar_t__ STATUS_NOTIFY_ENUM_DIR ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;

NTSTATUS
disk_check_notify(RDPCLIENT * This, NTHANDLE handle)
{
 struct fileinfo *pfinfo;
 NTSTATUS status = STATUS_PENDING;

 NOTIFY notify;

 pfinfo = &(This->fileinfo[handle]);
 if (!pfinfo->pdir)
  return STATUS_INVALID_DEVICE_REQUEST;



 status = NotifyInfo(This, handle, pfinfo->info_class, &notify);

 if (status != STATUS_PENDING)
  return status;

 if (memcmp(&pfinfo->notify, &notify, sizeof(NOTIFY)))
 {

  memcpy(&pfinfo->notify, &notify, sizeof(NOTIFY));
  status = STATUS_NOTIFY_ENUM_DIR;
 }

 return status;


}
