
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int printer_fp; } ;
struct TYPE_7__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {scalar_t__ handle; TYPE_3__* pdevice_data; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef TYPE_3__ PRINTER ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_SUCCESS ;
 int get_device_index (TYPE_2__*,int ) ;
 int pclose (int ) ;

__attribute__((used)) static NTSTATUS
printer_close(RDPCLIENT * This, NTHANDLE handle)
{
 int i = get_device_index(This, handle);
 if (i >= 0)
 {
  PRINTER *pprinter_data = This->rdpdr_device[i].pdevice_data;
  if (pprinter_data)
   pclose(pprinter_data->printer_fp);
  This->rdpdr_device[i].handle = 0;
 }
 return STATUS_SUCCESS;
}
