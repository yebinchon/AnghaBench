
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * channel; scalar_t__ serial; } ;
struct TYPE_6__ {TYPE_1__ seamless; int seamless_rdp; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int CHANNEL_OPTION_ENCRYPT_RDP ;
 int CHANNEL_OPTION_INITIALIZED ;
 int False ;
 int * channel_register (TYPE_2__*,char*,int,int ) ;
 int seamless_process ;

BOOL
seamless_init(RDPCLIENT * This)
{
 if (!This->seamless_rdp)
  return False;

 This->seamless.serial = 0;

 This->seamless.channel =
  channel_register(This, "seamrdp", CHANNEL_OPTION_INITIALIZED | CHANNEL_OPTION_ENCRYPT_RDP,
     seamless_process);
 return (This->seamless.channel != ((void*)0));
}
