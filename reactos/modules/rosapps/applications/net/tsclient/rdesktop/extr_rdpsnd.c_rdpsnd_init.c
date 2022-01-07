
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * channel; } ;
struct TYPE_6__ {TYPE_1__ rdpsnd; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int CHANNEL_OPTION_ENCRYPT_RDP ;
 int CHANNEL_OPTION_INITIALIZED ;
 int * channel_register (TYPE_2__*,char*,int,int ) ;
 int rdpsnd_process ;

BOOL
rdpsnd_init(RDPCLIENT * This)
{
 This->rdpsnd.channel =
  channel_register(This, "rdpsnd", CHANNEL_OPTION_INITIALIZED | CHANNEL_OPTION_ENCRYPT_RDP,
     rdpsnd_process);
 return (This->rdpsnd.channel != ((void*)0));
}
