
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int IpAddress; } ;
struct TYPE_13__ {TYPE_2__ A; } ;
struct TYPE_11__ {int DW; } ;
struct TYPE_15__ {TYPE_3__ Data; TYPE_1__ Flags; } ;
struct TYPE_14__ {int * pFirstRR; } ;
typedef TYPE_4__ DNS_RRSET ;
typedef int DNS_RECORDW ;


 int DNS_RRSET_ADD (TYPE_4__,TYPE_5__*) ;
 int DNS_RRSET_INIT (TYPE_4__) ;
 int DNS_RRSET_TERMINATE (TYPE_4__) ;
 int DnsFreeRecordList ;
 int DnsRecordListFree (int *,int ) ;
 scalar_t__ DnsRecordSetCompare (int *,int *,int **,int **) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 TYPE_5__ r1 ;
 TYPE_5__ r2 ;

__attribute__((used)) static void test_DnsRecordSetCompare( void )
{
    DNS_RECORDW *diff1;
    DNS_RECORDW *diff2;
    DNS_RRSET rr1, rr2;

    r1.Flags.DW = 0x2019;
    r2.Flags.DW = 0x2019;
    r2.Data.A.IpAddress = 0xffffffff;

    DNS_RRSET_INIT( rr1 );
    DNS_RRSET_INIT( rr2 );

    DNS_RRSET_ADD( rr1, &r1 );
    DNS_RRSET_ADD( rr2, &r2 );

    DNS_RRSET_TERMINATE( rr1 );
    DNS_RRSET_TERMINATE( rr2 );

    ok( DnsRecordSetCompare( ((void*)0), ((void*)0), ((void*)0), ((void*)0) ) == FALSE, "succeeded unexpectedly\n" );
    ok( DnsRecordSetCompare( rr1.pFirstRR, ((void*)0), ((void*)0), ((void*)0) ) == FALSE, "succeeded unexpectedly\n" );
    ok( DnsRecordSetCompare( ((void*)0), rr2.pFirstRR, ((void*)0), ((void*)0) ) == FALSE, "succeeded unexpectedly\n" );

    diff1 = ((void*)0);
    diff2 = ((void*)0);

    ok( DnsRecordSetCompare( ((void*)0), ((void*)0), &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    ok( diff1 == ((void*)0) && diff2 == ((void*)0), "unexpected result: %p, %p\n", diff1, diff2 );

    ok( DnsRecordSetCompare( rr1.pFirstRR, ((void*)0), &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    ok( diff1 != ((void*)0) && diff2 == ((void*)0), "unexpected result: %p, %p\n", diff1, diff2 );
    DnsRecordListFree( diff1, DnsFreeRecordList );

    ok( DnsRecordSetCompare( ((void*)0), rr2.pFirstRR, &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    ok( diff1 == ((void*)0) && diff2 != ((void*)0), "unexpected result: %p, %p\n", diff1, diff2 );
    DnsRecordListFree( diff2, DnsFreeRecordList );

    ok( DnsRecordSetCompare( rr1.pFirstRR, rr2.pFirstRR, ((void*)0), &diff2 ) == TRUE, "failed unexpectedly\n" );
    ok( diff2 == ((void*)0), "unexpected result: %p\n", diff2 );

    ok( DnsRecordSetCompare( rr1.pFirstRR, rr2.pFirstRR, &diff1, ((void*)0) ) == TRUE, "failed unexpectedly\n" );
    ok( diff1 == ((void*)0), "unexpected result: %p\n", diff1 );

    ok( DnsRecordSetCompare( rr1.pFirstRR, rr2.pFirstRR, &diff1, &diff2 ) == TRUE, "failed unexpectedly\n" );
    ok( diff1 == ((void*)0) && diff2 == ((void*)0), "unexpected result: %p, %p\n", diff1, diff2 );

    r2.Data.A.IpAddress = 0;

    ok( DnsRecordSetCompare( rr1.pFirstRR, rr2.pFirstRR, ((void*)0), &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    DnsRecordListFree( diff2, DnsFreeRecordList );

    ok( DnsRecordSetCompare( rr1.pFirstRR, rr2.pFirstRR, &diff1, ((void*)0) ) == FALSE, "succeeded unexpectedly\n" );
    DnsRecordListFree( diff1, DnsFreeRecordList );

    ok( DnsRecordSetCompare( rr1.pFirstRR, rr2.pFirstRR, &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    DnsRecordListFree( diff1, DnsFreeRecordList );
    DnsRecordListFree( diff2, DnsFreeRecordList );
}
