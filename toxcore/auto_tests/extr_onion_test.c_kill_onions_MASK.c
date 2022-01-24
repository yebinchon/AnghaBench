#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* dht; } ;
struct TYPE_10__ {int /*<<< orphan*/ * c; } ;
struct TYPE_9__ {int /*<<< orphan*/ * net; } ;
struct TYPE_8__ {TYPE_5__* onion; int /*<<< orphan*/  onion_a; TYPE_4__* onion_c; } ;
typedef  TYPE_1__ Onions ;
typedef  int /*<<< orphan*/  Networking_Core ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_2__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

void FUNC7(Onions *on)
{
    Networking_Core *net = on->onion->dht->net;
    DHT *dht = on->onion->dht;
    Net_Crypto *c = on->onion_c->c;
    FUNC6(on->onion_c);
    FUNC5(on->onion_a);
    FUNC4(on->onion);
    FUNC2(c);
    FUNC1(dht);
    FUNC3(net);
    FUNC0(on);
}