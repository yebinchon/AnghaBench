#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* c; int /*<<< orphan*/  dht; int /*<<< orphan*/  net; int /*<<< orphan*/  announce_ping_array; } ;
struct TYPE_8__ {int /*<<< orphan*/  tcp_c; } ;
typedef  TYPE_2__ Onion_Client ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_PACKET_DHTPK ; 
 int /*<<< orphan*/  NET_PACKET_ANNOUNCE_RESPONSE ; 
 int /*<<< orphan*/  NET_PACKET_ONION_DATA_RESPONSE ; 
 int /*<<< orphan*/  ONION_DATA_DHTPK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

void FUNC8(Onion_Client *onion_c)
{
    if (onion_c == NULL)
        return;

    FUNC4(&onion_c->announce_ping_array);
    FUNC5(onion_c, 0);
    FUNC2(onion_c->net, NET_PACKET_ANNOUNCE_RESPONSE, NULL, NULL);
    FUNC2(onion_c->net, NET_PACKET_ONION_DATA_RESPONSE, NULL, NULL);
    FUNC3(onion_c, ONION_DATA_DHTPK, NULL, NULL);
    FUNC0(onion_c->dht, CRYPTO_PACKET_DHTPK, NULL, NULL);
    FUNC6(onion_c->c->tcp_c, NULL, NULL);
    FUNC7(onion_c, sizeof(Onion_Client));
    FUNC1(onion_c);
}