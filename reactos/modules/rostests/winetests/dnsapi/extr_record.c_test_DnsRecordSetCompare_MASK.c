#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int IpAddress; } ;
struct TYPE_13__ {TYPE_2__ A; } ;
struct TYPE_11__ {int DW; } ;
struct TYPE_15__ {TYPE_3__ Data; TYPE_1__ Flags; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pFirstRR; } ;
typedef  TYPE_4__ DNS_RRSET ;
typedef  int /*<<< orphan*/  DNS_RECORDW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__) ; 
 int /*<<< orphan*/  DnsFreeRecordList ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 TYPE_5__ r1 ; 
 TYPE_5__ r2 ; 

__attribute__((used)) static void FUNC6( void )
{
    DNS_RECORDW *diff1;
    DNS_RECORDW *diff2;
    DNS_RRSET rr1, rr2;

    r1.Flags.DW = 0x2019;
    r2.Flags.DW = 0x2019;
    r2.Data.A.IpAddress = 0xffffffff;

    FUNC1( rr1 );
    FUNC1( rr2 );

    FUNC0( rr1, &r1 );
    FUNC0( rr2, &r2 );

    FUNC2( rr1 );
    FUNC2( rr2 );

    FUNC5( FUNC4( NULL, NULL, NULL, NULL ) == FALSE, "succeeded unexpectedly\n" );
    FUNC5( FUNC4( rr1.pFirstRR, NULL, NULL, NULL ) == FALSE, "succeeded unexpectedly\n" );
    FUNC5( FUNC4( NULL, rr2.pFirstRR, NULL, NULL ) == FALSE, "succeeded unexpectedly\n" );

    diff1 = NULL;
    diff2 = NULL;

    FUNC5( FUNC4( NULL, NULL, &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    FUNC5( diff1 == NULL && diff2 == NULL, "unexpected result: %p, %p\n", diff1, diff2 );

    FUNC5( FUNC4( rr1.pFirstRR, NULL, &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    FUNC5( diff1 != NULL && diff2 == NULL, "unexpected result: %p, %p\n", diff1, diff2 );
    FUNC3( diff1, DnsFreeRecordList );

    FUNC5( FUNC4( NULL, rr2.pFirstRR, &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    FUNC5( diff1 == NULL && diff2 != NULL, "unexpected result: %p, %p\n", diff1, diff2 );
    FUNC3( diff2, DnsFreeRecordList );

    FUNC5( FUNC4( rr1.pFirstRR, rr2.pFirstRR, NULL, &diff2 ) == TRUE, "failed unexpectedly\n" );
    FUNC5( diff2 == NULL, "unexpected result: %p\n", diff2 );

    FUNC5( FUNC4( rr1.pFirstRR, rr2.pFirstRR, &diff1, NULL ) == TRUE, "failed unexpectedly\n" );
    FUNC5( diff1 == NULL, "unexpected result: %p\n", diff1 );

    FUNC5( FUNC4( rr1.pFirstRR, rr2.pFirstRR, &diff1, &diff2 ) == TRUE, "failed unexpectedly\n" );
    FUNC5( diff1 == NULL && diff2 == NULL, "unexpected result: %p, %p\n", diff1, diff2 );

    r2.Data.A.IpAddress = 0;

    FUNC5( FUNC4( rr1.pFirstRR, rr2.pFirstRR, NULL, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    FUNC3( diff2, DnsFreeRecordList );

    FUNC5( FUNC4( rr1.pFirstRR, rr2.pFirstRR, &diff1, NULL ) == FALSE, "succeeded unexpectedly\n" );
    FUNC3( diff1, DnsFreeRecordList );

    FUNC5( FUNC4( rr1.pFirstRR, rr2.pFirstRR, &diff1, &diff2 ) == FALSE, "succeeded unexpectedly\n" );
    FUNC3( diff1, DnsFreeRecordList );
    FUNC3( diff2, DnsFreeRecordList );
}