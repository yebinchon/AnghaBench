#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  net; } ;
struct TYPE_7__ {int /*<<< orphan*/  net; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  secret_symmetric_key; TYPE_2__* dht; } ;
typedef  TYPE_1__ Onion ;
typedef  TYPE_2__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  NET_PACKET_ONION_RECV_1 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_RECV_2 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_RECV_3 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_SEND_1 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_SEND_2 ; 
 int /*<<< orphan*/  NET_PACKET_ONION_SEND_INITIAL ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  handle_recv_1 ; 
 int /*<<< orphan*/  handle_recv_2 ; 
 int /*<<< orphan*/  handle_recv_3 ; 
 int /*<<< orphan*/  handle_send_1 ; 
 int /*<<< orphan*/  handle_send_2 ; 
 int /*<<< orphan*/  handle_send_initial ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

Onion *FUNC4(DHT *dht)
{
    if (dht == NULL)
        return NULL;

    Onion *onion = FUNC0(1, sizeof(Onion));

    if (onion == NULL)
        return NULL;

    onion->dht = dht;
    onion->net = dht->net;
    FUNC2(onion->secret_symmetric_key);
    onion->timestamp = FUNC3();

    FUNC1(onion->net, NET_PACKET_ONION_SEND_INITIAL, &handle_send_initial, onion);
    FUNC1(onion->net, NET_PACKET_ONION_SEND_1, &handle_send_1, onion);
    FUNC1(onion->net, NET_PACKET_ONION_SEND_2, &handle_send_2, onion);

    FUNC1(onion->net, NET_PACKET_ONION_RECV_3, &handle_recv_3, onion);
    FUNC1(onion->net, NET_PACKET_ONION_RECV_2, &handle_recv_2, onion);
    FUNC1(onion->net, NET_PACKET_ONION_RECV_1, &handle_recv_1, onion);

    return onion;
}