#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  net; } ;
typedef  TYPE_1__ Onion ;

/* Variables and functions */
 int /*<<< orphan*/  NET_PACKET_ONION_RECV_1 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_RECV_2 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_RECV_3 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_SEND_1 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_SEND_2 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_SEND_INITIAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(Onion *onion)
{
    if (onion == NULL)
        return;

    FUNC1(onion->net, NET_PACKET_ONION_SEND_INITIAL, NULL, NULL);
    FUNC1(onion->net, NET_PACKET_ONION_SEND_1, NULL, NULL);
    FUNC1(onion->net, NET_PACKET_ONION_SEND_2, NULL, NULL);

    FUNC1(onion->net, NET_PACKET_ONION_RECV_3, NULL, NULL);
    FUNC1(onion->net, NET_PACKET_ONION_RECV_2, NULL, NULL);
    FUNC1(onion->net, NET_PACKET_ONION_RECV_1, NULL, NULL);

    FUNC0(onion);
}