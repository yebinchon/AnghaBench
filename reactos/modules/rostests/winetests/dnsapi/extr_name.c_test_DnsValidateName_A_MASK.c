#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ status; scalar_t__ status_broken; int /*<<< orphan*/ * name; int /*<<< orphan*/  format; } ;
typedef  scalar_t__ DNS_STATUS ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DnsNameDomain ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INVALID_NAME ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 TYPE_1__* test_data ; 

__attribute__((used)) static void FUNC4( void )
{
    unsigned int i;
    DNS_STATUS status;

    status = FUNC1( NULL, DnsNameDomain );
    FUNC3( status == ERROR_INVALID_NAME, "succeeded unexpectedly\n" );

    for (i = 0; i < FUNC0(test_data); i++)
    {
        status = FUNC1( test_data[i].name, test_data[i].format );
        FUNC3( status == test_data[i].status || FUNC2(status == test_data[i].status_broken),
            "%d: \'%s\': got %d, expected %d\n", i, test_data[i].name, status, test_data[i].status );
    }
}