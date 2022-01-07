
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_2__ {int Buffer; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PANSI_STRING ;
typedef int LPSTR ;
typedef int CHAR ;


 scalar_t__ CurrentEIP ;
 int CurrentESP ;
 int CurrentSS ;
 int DPRINT (int ) ;
 int FALSE ;
 int GetLinearAddress (int ,int ) ;
 scalar_t__ IsAddressValid (int) ;
 scalar_t__ PICE_KdpPrintString ;
 int TRUE ;
 int bInPrintk ;

void PrintkCallback(void)
{
 LPSTR fmt,args;
 ULONG ulAddress;
 ULONG countArgs,i,len;
 PANSI_STRING temp;
  CHAR buf[128];

 DPRINT((0,"In PrintkCallback\n"));

 bInPrintk = TRUE;


 ulAddress = GetLinearAddress(CurrentSS,CurrentESP);
 if(ulAddress)
 {
  DPRINT((0,"In PrintkCallback: ulAddress: %x\n", ulAddress));
  if(IsAddressValid(ulAddress+sizeof(char *)) )
  {

   temp = (PANSI_STRING)*(PULONG)(ulAddress+sizeof(char *));
     DPRINT((0,"PrintkCallback: %s\n", temp->Buffer));

   CurrentEIP = (ULONG_PTR)PICE_KdpPrintString;
  }
 }
 bInPrintk = FALSE;
}
