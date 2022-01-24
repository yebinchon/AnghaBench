#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct TYPE_5__ {int /*<<< orphan*/  hardening; scalar_t__ ret_timestamp; TYPE_1__ ret_ip_port; scalar_t__ last_pinged; scalar_t__ timestamp; TYPE_1__ ip_port; } ;
typedef  TYPE_1__ IP_Port ;
typedef  TYPE_2__ IPPTsPng ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(IPPTsPng *assoc, uint8_t ours)
{
    IP_Port *ipp = &assoc->ip_port;
    FUNC3("\nIP: %s Port: %u", FUNC0(&ipp->ip), FUNC1(ipp->port));
    FUNC3("\nTimestamp: %llu", (long long unsigned int) assoc->timestamp);
    FUNC3("\nLast pinged: %llu\n", (long long unsigned int) assoc->last_pinged);

    ipp = &assoc->ret_ip_port;

    if (ours)
        FUNC3("OUR IP: %s Port: %u\n", FUNC0(&ipp->ip), FUNC1(ipp->port));
    else
        FUNC3("RET IP: %s Port: %u\n", FUNC0(&ipp->ip), FUNC1(ipp->port));

    FUNC3("Timestamp: %llu\n", (long long unsigned int) assoc->ret_timestamp);
    FUNC2(&assoc->hardening);

}