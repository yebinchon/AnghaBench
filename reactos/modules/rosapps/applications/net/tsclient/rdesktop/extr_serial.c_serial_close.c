
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {scalar_t__ handle; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_SUCCESS ;
 int STATUS_TIMEOUT ;
 int close (int ) ;
 int get_device_index (TYPE_2__*,int ) ;
 int rdpdr_abort_io (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static NTSTATUS
serial_close(RDPCLIENT * This, NTHANDLE handle)
{
 int i = get_device_index(This, handle);
 if (i >= 0)
  This->rdpdr_device[i].handle = 0;

 rdpdr_abort_io(This, handle, 0, STATUS_TIMEOUT);
 close(handle);
 return STATUS_SUCCESS;
}
