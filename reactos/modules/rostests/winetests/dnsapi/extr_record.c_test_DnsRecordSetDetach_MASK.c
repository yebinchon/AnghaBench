#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pNext; } ;
struct TYPE_12__ {TYPE_2__* pFirstRR; } ;
typedef  TYPE_1__ DNS_RRSET ;
typedef  TYPE_2__ DNS_RECORDW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 TYPE_2__ r1 ; 
 TYPE_2__ r2 ; 
 TYPE_2__ r3 ; 

__attribute__((used)) static void FUNC5( void )
{
    DNS_RRSET rr;
    DNS_RECORDW *r, *s;

    FUNC1( rr );
    FUNC0( rr, &r1 );
    FUNC0( rr, &r2 );
    FUNC0( rr, &r3 );
    FUNC2( rr );

    FUNC4( !FUNC3( NULL ), "succeeded unexpectedly\n" );

    r = rr.pFirstRR;
    s = FUNC3( r );

    FUNC4( s == &r3, "failed unexpectedly: got %p, expected %p\n", s, &r3 );
    FUNC4( r == &r1, "failed unexpectedly: got %p, expected %p\n", r, &r1 );
    FUNC4( !r2.pNext, "failed unexpectedly\n" );
}