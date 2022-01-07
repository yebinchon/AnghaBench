
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {int String; } ;
struct TYPE_8__ {TYPE_1__ IpAddress; struct TYPE_8__* Next; } ;
struct TYPE_9__ {TYPE_2__* CurrentDnsServer; TYPE_2__ DnsServerList; } ;
typedef TYPE_2__* PIP_ADDR_STRING ;
typedef TYPE_3__* PFIXED_INFO ;


 int GetNetworkParams (TYPE_3__*,scalar_t__*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (scalar_t__) ;
 int printf (char*,char,...) ;

int main( int argc, char **argv ) {
  ULONG OutBufLen = 0;
  PFIXED_INFO pFixedInfo;
  PIP_ADDR_STRING Addr;

  GetNetworkParams(((void*)0), &OutBufLen);
  pFixedInfo = malloc(OutBufLen);
  if (!pFixedInfo) {
    printf( "Failed to alloc %d bytes.\n", (int)OutBufLen );
    return 1;
  }

  printf( "%d Bytes allocated\n", (int)OutBufLen );

  GetNetworkParams(pFixedInfo,&OutBufLen);

  for( Addr = &pFixedInfo->DnsServerList;
       Addr;
       Addr = Addr->Next ) {
    printf( "%c%s\n",
     Addr == pFixedInfo->CurrentDnsServer ? '*' : ' ',
     Addr->IpAddress.String );
  }

  free( pFixedInfo );
  return 0;
}
