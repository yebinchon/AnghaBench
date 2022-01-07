
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;
typedef int BOOL ;


 int CHANNEL_OPTION_ENCRYPT_RDP ;
 int CHANNEL_OPTION_INITIALIZED ;
 int * channel_register (int *,char*,int,int ) ;
 int * lspci_channel ;
 int lspci_process ;

BOOL
lspci_init(RDPCLIENT * This)
{
 lspci_channel =
  channel_register(This, "lspci", CHANNEL_OPTION_INITIALIZED | CHANNEL_OPTION_ENCRYPT_RDP,
     lspci_process);
 return (lspci_channel != ((void*)0));
}
