
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * channel; } ;
struct TYPE_6__ {scalar_t__ num_devices; TYPE_1__ rdpdr; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int CHANNEL_OPTION_COMPRESS_RDP ;
 int CHANNEL_OPTION_INITIALIZED ;
 int * channel_register (TYPE_2__*,char*,int,int ) ;
 int rdpdr_process ;

BOOL
rdpdr_init(RDPCLIENT * This)
{
 if (This->num_devices > 0)
 {
  This->rdpdr.channel =
   channel_register(This, "rdpdr",
      CHANNEL_OPTION_INITIALIZED | CHANNEL_OPTION_COMPRESS_RDP,
      rdpdr_process);
 }

 return (This->rdpdr.channel != ((void*)0));
}
