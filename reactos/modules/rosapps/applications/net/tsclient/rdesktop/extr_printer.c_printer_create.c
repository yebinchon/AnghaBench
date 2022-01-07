
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_7__ {char* printer; void* printer_fp; } ;
struct TYPE_6__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_5__ {int handle; scalar_t__ pdevice_data; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef TYPE_3__ PRINTER ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_SUCCESS ;
 int fileno (void*) ;
 void* popen (char*,char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static NTSTATUS
printer_create(RDPCLIENT * This, uint32 device_id, uint32 access, uint32 share_mode, uint32 disposition, uint32 flags,
        char *filename, NTHANDLE * handle)
{
 char cmd[256];
 PRINTER *pprinter_data;

 pprinter_data = (PRINTER *) This->rdpdr_device[device_id].pdevice_data;


 if (pprinter_data->printer == "mydeskjet")
 {
  pprinter_data->printer_fp = popen("lpr", "w");
 }
 else
 {
  sprintf(cmd, "lpr -P %s", pprinter_data->printer);
  pprinter_data->printer_fp = popen(cmd, "w");
 }

 This->rdpdr_device[device_id].handle = fileno(pprinter_data->printer_fp);
 *handle = This->rdpdr_device[device_id].handle;
 return STATUS_SUCCESS;
}
