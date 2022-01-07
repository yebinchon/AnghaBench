
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8 ;
typedef int uint32 ;
struct TYPE_13__ {int bloblen; char* blob; int printer; int driver; int default_printer; } ;
struct TYPE_11__ {int channel; } ;
struct TYPE_12__ {int num_devices; TYPE_2__ rdpdr; TYPE_1__* rdpdr_device; } ;
struct TYPE_10__ {int device_type; char* name; scalar_t__ pdevice_data; } ;
typedef int STREAM ;
typedef TYPE_3__ RDPCLIENT ;
typedef TYPE_4__ PRINTER ;



 int announcedata_size (TYPE_3__*) ;
 int channel_init (TYPE_3__*,int ,int ) ;
 int channel_send (TYPE_3__*,int ,int ) ;
 int out_uint32 (int ,int ) ;
 int out_uint32_le (int ,int) ;
 int out_uint8a (int ,char*,int) ;
 int out_uint8p (int ,char*,int) ;
 int out_uint8s (int ,int) ;
 int rdp_out_unistr (TYPE_3__*,int ,int ,int ) ;
 int s_mark_end (int ) ;
 int strlen (int ) ;
 int xfree (char*) ;

__attribute__((used)) static void
rdpdr_send_available(RDPCLIENT * This)
{

 uint8 magic[4] = "rDAD";
 uint32 driverlen, printerlen, bloblen;
 int i;
 STREAM s;
 PRINTER *printerinfo;

 s = channel_init(This, This->rdpdr.channel, announcedata_size(This));
 out_uint8a(s, magic, 4);
 out_uint32_le(s, This->num_devices);

 for (i = 0; i < This->num_devices; i++)
 {
  out_uint32_le(s, This->rdpdr_device[i].device_type);
  out_uint32_le(s, i);


  out_uint8p(s, This->rdpdr_device[i].name, 8);

  switch (This->rdpdr_device[i].device_type)
  {
   case 128:
    printerinfo = (PRINTER *) This->rdpdr_device[i].pdevice_data;

    driverlen = 2 * strlen(printerinfo->driver) + 2;
    printerlen = 2 * strlen(printerinfo->printer) + 2;
    bloblen = printerinfo->bloblen;

    out_uint32_le(s, 24 + driverlen + printerlen + bloblen);
    out_uint32_le(s, printerinfo->default_printer ? 2 : 0);
    out_uint8s(s, 8);
    out_uint32_le(s, driverlen);
    out_uint32_le(s, printerlen);
    out_uint32_le(s, bloblen);
    rdp_out_unistr(This, s, printerinfo->driver, driverlen - 2);
    rdp_out_unistr(This, s, printerinfo->printer, printerlen - 2);
    out_uint8a(s, printerinfo->blob, bloblen);

    if (printerinfo->blob)
     xfree(printerinfo->blob);
    break;
   default:
    out_uint32(s, 0);
  }
 }
 s_mark_end(s);
 channel_send(This, s, This->rdpdr.channel);
}
