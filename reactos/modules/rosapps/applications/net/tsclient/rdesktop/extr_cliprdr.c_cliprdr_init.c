
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * channel; } ;
struct TYPE_6__ {TYPE_1__ cliprdr; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int CHANNEL_OPTION_COMPRESS_RDP ;
 int CHANNEL_OPTION_ENCRYPT_RDP ;
 int CHANNEL_OPTION_INITIALIZED ;
 int CHANNEL_OPTION_SHOW_PROTOCOL ;
 int * channel_register (TYPE_2__*,char*,int,int ) ;
 int cliprdr_process ;

BOOL
cliprdr_init(RDPCLIENT * This)
{
 This->cliprdr.channel =
  channel_register(This, "cliprdr",
     CHANNEL_OPTION_INITIALIZED | CHANNEL_OPTION_ENCRYPT_RDP |
     CHANNEL_OPTION_COMPRESS_RDP | CHANNEL_OPTION_SHOW_PROTOCOL,
     cliprdr_process);
 return (This->cliprdr.channel != ((void*)0));
}
