
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_5__ {scalar_t__ handle; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_SUCCESS ;
 int close (int ) ;
 int get_device_index (TYPE_2__*,int ) ;

__attribute__((used)) static NTSTATUS
parallel_close(RDPCLIENT * This, NTHANDLE handle)
{
 int i = get_device_index(This, handle);
 if (i >= 0)
  This->rdpdr_device[i].handle = 0;
 close(handle);
 return STATUS_SUCCESS;
}
