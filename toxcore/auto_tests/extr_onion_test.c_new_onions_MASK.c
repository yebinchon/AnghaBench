#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_10__ {int* uint8; } ;
struct TYPE_13__ {TYPE_1__ ip6; } ;
struct TYPE_12__ {scalar_t__ onion_c; scalar_t__ onion_a; scalar_t__ onion; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ TCP_Proxy_Info ;
typedef  TYPE_3__ Onions ;
typedef  TYPE_4__ IP ;
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

Onions *FUNC8(uint16_t port)
{
    IP ip;
    FUNC0(&ip, 1);
    ip.ip6.uint8[15] = 1;
    Onions *on = FUNC1(sizeof(Onions));
    DHT *dht = FUNC2(FUNC4(ip, port));
    on->onion = FUNC5(dht);
    on->onion_a = FUNC6(dht);
    TCP_Proxy_Info inf = {0};
    on->onion_c = FUNC7(FUNC3(dht, &inf));

    if (on->onion && on->onion_a && on->onion_c)
        return on;

    return NULL;
}