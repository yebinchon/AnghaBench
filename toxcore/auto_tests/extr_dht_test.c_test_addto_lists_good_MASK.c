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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  public_key ;
struct TYPE_5__ {scalar_t__ family; } ;
struct TYPE_6__ {int port; TYPE_1__ ip; } ;
typedef  TYPE_2__ IP_Port ;
typedef  int /*<<< orphan*/  DHT ;
typedef  int /*<<< orphan*/  Client_data ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 scalar_t__ FUNC3 (int const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 

void FUNC6(DHT            *dht,
                           Client_data    *list,
                           uint32_t        length,
                           IP_Port        *ip_port,
                           const uint8_t  *comp_client_id)
{
    uint8_t public_key[crypto_box_PUBLICKEYBYTES];
    uint8_t ipv6 = ip_port->ip.family == AF_INET6 ? 1 : 0;

    FUNC4(list, length, ipv6);

    // check "good" client id replacement
    do {
        FUNC5(public_key, sizeof(public_key));
    } while (FUNC3(comp_client_id, list, length, public_key));

    ip_port->port += 1;
    FUNC0(dht, *ip_port, public_key);
    FUNC1(FUNC2(list, length, public_key) >= 0, "Good client id is not in the list");

    // check "good" client id skip
    do {
        FUNC5(public_key, sizeof(public_key));
    } while (!FUNC3(comp_client_id, list, length, public_key));

    ip_port->port += 1;
    FUNC0(dht, *ip_port, public_key);
    FUNC1(FUNC2(list, length, public_key) == -1, "Good client id is in the list");
}