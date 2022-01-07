
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_4__ {scalar_t__ handle; scalar_t__ pdevice_data; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int PRINTER ;
typedef scalar_t__ NTHANDLE ;


 int RDPDR_MAX_DEVICES ;

__attribute__((used)) static PRINTER *
get_printer_data(RDPCLIENT * This, NTHANDLE handle)
{
 int index;

 for (index = 0; index < RDPDR_MAX_DEVICES; index++)
 {
  if (handle == This->rdpdr_device[index].handle)
   return (PRINTER *) This->rdpdr_device[index].pdevice_data;
 }
 return ((void*)0);
}
