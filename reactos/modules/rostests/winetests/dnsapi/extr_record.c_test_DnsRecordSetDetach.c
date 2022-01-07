
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int pNext; } ;
struct TYPE_12__ {TYPE_2__* pFirstRR; } ;
typedef TYPE_1__ DNS_RRSET ;
typedef TYPE_2__ DNS_RECORDW ;


 int DNS_RRSET_ADD (TYPE_1__,TYPE_2__*) ;
 int DNS_RRSET_INIT (TYPE_1__) ;
 int DNS_RRSET_TERMINATE (TYPE_1__) ;
 TYPE_2__* DnsRecordSetDetach (TYPE_2__*) ;
 int ok (int,char*,...) ;
 TYPE_2__ r1 ;
 TYPE_2__ r2 ;
 TYPE_2__ r3 ;

__attribute__((used)) static void test_DnsRecordSetDetach( void )
{
    DNS_RRSET rr;
    DNS_RECORDW *r, *s;

    DNS_RRSET_INIT( rr );
    DNS_RRSET_ADD( rr, &r1 );
    DNS_RRSET_ADD( rr, &r2 );
    DNS_RRSET_ADD( rr, &r3 );
    DNS_RRSET_TERMINATE( rr );

    ok( !DnsRecordSetDetach( ((void*)0) ), "succeeded unexpectedly\n" );

    r = rr.pFirstRR;
    s = DnsRecordSetDetach( r );

    ok( s == &r3, "failed unexpectedly: got %p, expected %p\n", s, &r3 );
    ok( r == &r1, "failed unexpectedly: got %p, expected %p\n", r, &r1 );
    ok( !r2.pNext, "failed unexpectedly\n" );
}
