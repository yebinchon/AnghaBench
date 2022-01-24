#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ping_array; TYPE_1__* dht; } ;
struct TYPE_5__ {int /*<<< orphan*/  net; } ;
typedef  TYPE_2__ PING ;

/* Variables and functions */
 int /*<<< orphan*/  NET_PACKET_PING_REQUEST ; 
 int /*<<< orphan*/  NET_PACKET_PING_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(PING *ping)
{
    FUNC1(ping->dht->net, NET_PACKET_PING_REQUEST, NULL, NULL);
    FUNC1(ping->dht->net, NET_PACKET_PING_RESPONSE, NULL, NULL);
    FUNC2(&ping->ping_array);

    FUNC0(ping);
}