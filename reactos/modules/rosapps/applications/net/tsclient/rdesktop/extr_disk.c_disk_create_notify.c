
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct fileinfo {int info_class; int notify; } ;
struct TYPE_4__ {struct fileinfo* fileinfo; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef scalar_t__ NTSTATUS ;
typedef size_t NTHANDLE ;


 scalar_t__ NotifyInfo (TYPE_1__*,size_t,int,int *) ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;

NTSTATUS
disk_create_notify(RDPCLIENT * This, NTHANDLE handle, uint32 info_class)
{

 struct fileinfo *pfinfo;
 NTSTATUS ret = STATUS_PENDING;



 pfinfo = &(This->fileinfo[handle]);
 pfinfo->info_class = info_class;

 ret = NotifyInfo(This, handle, info_class, &pfinfo->notify);

 if (info_class & 0x1000)
 {
  if (ret == STATUS_PENDING)
   return STATUS_SUCCESS;
 }




 return ret;

}
