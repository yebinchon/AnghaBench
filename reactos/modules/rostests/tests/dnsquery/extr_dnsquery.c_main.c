
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int IpAddress; } ;
struct TYPE_7__ {TYPE_1__ A; } ;
struct TYPE_8__ {scalar_t__ wType; struct TYPE_8__* pNext; TYPE_2__ Data; } ;
typedef TYPE_3__* PDNS_RECORD ;
typedef int DWORD ;


 int DNS_QUERY_STANDARD ;
 scalar_t__ DNS_TYPE_A ;
 int DnsFreeRecordList ;
 scalar_t__ DnsQuery (char*,scalar_t__,int ,int *,TYPE_3__**,int *) ;
 int DnsRecordListFree (TYPE_3__*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int assert (int) ;
 int ntohl (int ) ;
 int printf (char*,int,int,int,int) ;

int main( int argc, char **argv ) {
  PDNS_RECORD QueryReply, AddrResponse;
  DWORD Addr;

  assert (DnsQuery ("www.reactos.com", DNS_TYPE_A, DNS_QUERY_STANDARD,
      ((void*)0), &QueryReply, ((void*)0)) == ERROR_SUCCESS);
  AddrResponse = QueryReply;
  while( AddrResponse ) {
    if( AddrResponse->wType == DNS_TYPE_A ) {
      Addr = ntohl( AddrResponse->Data.A.IpAddress );
      printf( "www.reactos.com == %d.%d.%d.%d\n",
       (int)(Addr >> 24) & 0xff,
       (int)(Addr >> 16) & 0xff,
       (int)(Addr >> 8) & 0xff,
       (int)Addr & 0xff );
    }
    AddrResponse = AddrResponse->pNext;
  }
  DnsRecordListFree( QueryReply, DnsFreeRecordList );

  return 0;
}
