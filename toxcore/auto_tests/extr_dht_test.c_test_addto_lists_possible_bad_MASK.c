#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  public_key ;
struct TYPE_11__ {int /*<<< orphan*/  assoc4; int /*<<< orphan*/  assoc6; int /*<<< orphan*/  public_key; } ;
struct TYPE_9__ {scalar_t__ family; } ;
struct TYPE_10__ {int port; TYPE_1__ ip; } ;
typedef  TYPE_2__ IP_Port ;
typedef  int /*<<< orphan*/  DHT ;
typedef  TYPE_3__ Client_data ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int,int*) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC3 (int const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 

void FUNC9(DHT            *dht,
                                   Client_data    *list,
                                   uint32_t        length,
                                   IP_Port        *ip_port,
                                   const uint8_t  *comp_client_id)
{
    // check "possibly bad" clients replacement
    int used, test1, test2, test3;
    uint8_t public_key[crypto_box_PUBLICKEYBYTES], test_id1[crypto_box_PUBLICKEYBYTES], test_id2[crypto_box_PUBLICKEYBYTES],
            test_id3[crypto_box_PUBLICKEYBYTES];
    uint8_t ipv6 = ip_port->ip.family == AF_INET6 ? 1 : 0;

    FUNC8(public_key, sizeof(public_key));
    FUNC5(list, length, ipv6);

    test1 = FUNC7() % (length / 3);
    test2 = FUNC7() % (length / 3) + length / 3;
    test3 = FUNC7() % (length / 3) + 2 * length / 3;
    FUNC1(!(test1 == test2 || test1 == test3 || test2 == test3), "Wrong test indices are chosen");

    FUNC4((uint8_t *)&test_id1, list[test1].public_key);
    FUNC4((uint8_t *)&test_id2, list[test2].public_key);
    FUNC4((uint8_t *)&test_id3, list[test3].public_key);

    // mark nodes as "possibly bad"
    if (ipv6) {
        FUNC6(&list[test1].assoc6);
        FUNC6(&list[test2].assoc6);
        FUNC6(&list[test3].assoc6);
    } else {
        FUNC6(&list[test1].assoc4);
        FUNC6(&list[test2].assoc4);
        FUNC6(&list[test3].assoc4);
    }

    ip_port->port += 1;
    used = FUNC0(dht, *ip_port, public_key);
    FUNC1(used >= 1, "Wrong number of added clients");

    FUNC1(FUNC2(list, length, public_key) >= 0, "Client id is not in the list");

    int inlist_id1 = FUNC2(list, length, test_id1) >= 0;
    int inlist_id2 = FUNC2(list, length, test_id2) >= 0;
    int inlist_id3 = FUNC2(list, length, test_id3) >= 0;

    FUNC1(inlist_id1 + inlist_id2 + inlist_id3 == 2, "Wrong client removed");

    if (!inlist_id1) {
        FUNC1(FUNC3(comp_client_id, test_id2, test_id1) == 1,
                      "Id has been removed but is closer to than another one");
        FUNC1(FUNC3(comp_client_id, test_id3, test_id1) == 1,
                      "Id has been removed but is closer to than another one");
    } else if (!inlist_id2) {
        FUNC1(FUNC3(comp_client_id, test_id1, test_id2) == 1,
                      "Id has been removed but is closer to than another one");
        FUNC1(FUNC3(comp_client_id, test_id3, test_id2) == 1,
                      "Id has been removed but is closer to than another one");
    } else if (!inlist_id3) {
        FUNC1(FUNC3(comp_client_id, test_id1, test_id3) == 1,
                      "Id has been removed but is closer to than another one");
        FUNC1(FUNC3(comp_client_id, test_id2, test_id3) == 1,
                      "Id has been removed but is closer to than another one");
    }
}