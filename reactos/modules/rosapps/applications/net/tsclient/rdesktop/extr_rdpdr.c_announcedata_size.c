
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bloblen; int printer; int driver; int blob; } ;
struct TYPE_6__ {int num_devices; TYPE_1__* rdpdr_device; } ;
struct TYPE_5__ {scalar_t__ device_type; scalar_t__ pdevice_data; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef TYPE_3__ PRINTER ;


 scalar_t__ DEVICE_TYPE_PRINTER ;
 scalar_t__ printercache_load_blob (int ,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int
announcedata_size(RDPCLIENT * This)
{
 int size, i;
 PRINTER *printerinfo;

 size = 8;
 size += This->num_devices * 0x14;

 for (i = 0; i < This->num_devices; i++)
 {
  if (This->rdpdr_device[i].device_type == DEVICE_TYPE_PRINTER)
  {
   printerinfo = (PRINTER *) This->rdpdr_device[i].pdevice_data;
   printerinfo->bloblen =
    printercache_load_blob(printerinfo->printer, &(printerinfo->blob));

   size += 0x18;
   size += 2 * strlen(printerinfo->driver) + 2;
   size += 2 * strlen(printerinfo->printer) + 2;
   size += printerinfo->bloblen;
  }
 }

 return size;
}
