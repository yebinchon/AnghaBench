
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int IPv4Address; } ;
struct TYPE_5__ {int Type; TYPE_1__ Address; } ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int PCHAR ;
typedef int INT ;


 int A2SStr ;
 int DN2H (int ) ;


 int MIN_TRACE ;
 int TI_DbgPrint (int ,char*) ;
 int sprintf (int ,char*,int,int,int,int) ;
 int strcpy (int ,char*) ;

PCHAR A2S(
    PIP_ADDRESS Address)







{
    ULONG ip;
    PCHAR p;

    p = A2SStr;

    if (!Address) {
        TI_DbgPrint(MIN_TRACE, ("NULL address given.\n"));
        strcpy(p, "(NULL)");
        return p;
    }

    switch (Address->Type) {
    case 129:
 ip = DN2H(Address->Address.IPv4Address);
 sprintf(p, "%d.%d.%d.%d",
  (INT)((ip >> 24) & 0xFF),
  (INT)((ip >> 16) & 0xFF),
  (INT)((ip >> 8) & 0xFF),
  (INT)(ip & 0xFF));
 break;

    case 128:

 strcpy(p, "(IPv6 address not supported)");
 break;
    }
    return p;
}
