#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  test_id ;
struct TYPE_19__ {int port; } ;
struct TYPE_16__ {TYPE_9__ ip_port; } ;
struct TYPE_15__ {TYPE_9__ ip_port; } ;
struct TYPE_18__ {TYPE_3__ assoc4; TYPE_2__ assoc6; int /*<<< orphan*/  public_key; } ;
struct TYPE_14__ {scalar_t__ family; } ;
struct TYPE_17__ {int port; TYPE_1__ ip; } ;
typedef  TYPE_4__ IP_Port ;
typedef  int /*<<< orphan*/  DHT ;
typedef  TYPE_5__ Client_data ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int TOX_PORT_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (TYPE_5__*,int,int*) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_9__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_9__*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,int) ; 

void FUNC8(DHT            *dht,
                             Client_data    *list,
                             uint32_t        length,
                             IP_Port        *ip_port)
{
    int used, test, test1, test2, found;
    IP_Port test_ipp;
    uint8_t test_id[crypto_box_PUBLICKEYBYTES];
    uint8_t ipv6 = ip_port->ip.family == AF_INET6 ? 1 : 0;

    // check id update for existing ip_port
    test = FUNC6() % length;
    FUNC4(&test_ipp, ipv6 ? &list[test].assoc6.ip_port : &list[test].assoc4.ip_port);

    FUNC7(test_id, sizeof(test_id));
    used = FUNC0(dht, test_ipp, test_id);
    FUNC1(used >= 1, "Wrong number of added clients");
    // it is possible to have ip_port duplicates in the list, so ip_port @ found not always equal to ip_port @ test
    found = FUNC2(list, length, test_id);
    FUNC1(found >= 0, "Client id is not in the list");
    FUNC1(FUNC5(&test_ipp, ipv6 ? &list[found].assoc6.ip_port : &list[found].assoc4.ip_port),
                  "Client IP_Port is incorrect");

    // check ip_port update for existing id
    test = FUNC6() % length;
    test_ipp.port = FUNC6() % TOX_PORT_DEFAULT;
    FUNC3(test_id, list[test].public_key);

    used = FUNC0(dht, test_ipp, test_id);
    FUNC1(used >= 1, "Wrong number of added clients");
    // it is not possible to have id duplicates in the list, so id @ found must be equal id @ test
    FUNC1(FUNC2(list, length, test_id) == test, "Client id is not in the list");
    FUNC1(FUNC5(&test_ipp, ipv6 ? &list[test].assoc6.ip_port : &list[test].assoc4.ip_port),
                  "Client IP_Port is incorrect");

    // check ip_port update for existing id and ip_port (... port ... id ...)
    test1 = FUNC6() % (length / 2);
    test2 = FUNC6() % (length / 2) + length / 2;

    FUNC4(&test_ipp, ipv6 ? &list[test1].assoc6.ip_port : &list[test1].assoc4.ip_port);
    FUNC3(test_id, list[test2].public_key);

    if (ipv6) list[test2].assoc6.ip_port.port = -1;
    else list[test2].assoc4.ip_port.port = -1;

    used = FUNC0(dht, test_ipp, test_id);
    FUNC1(used >= 1, "Wrong number of added clients");
    FUNC1(FUNC2(list, length, test_id) == test2, "Client id is not in the list");
    FUNC1(FUNC5(&test_ipp, ipv6 ? &list[test2].assoc6.ip_port : &list[test2].assoc4.ip_port),
                  "Client IP_Port is incorrect");

    // check ip_port update for existing id and ip_port (... id ... port ...)
    test1 = FUNC6() % (length / 2);
    test2 = FUNC6() % (length / 2) + length / 2;

    FUNC4(&test_ipp, ipv6 ? &list[test2].assoc6.ip_port : &list[test2].assoc4.ip_port);
    FUNC3(test_id, list[test1].public_key);

    if (ipv6) list[test1].assoc6.ip_port.port = -1;
    else list[test1].assoc4.ip_port.port = -1;

    used = FUNC0(dht, test_ipp, test_id);
    FUNC1(used >= 1, "Wrong number of added clients");
    FUNC1(FUNC2(list, length, test_id) == test1, "Client id is not in the list");
    FUNC1(FUNC5(&test_ipp, ipv6 ? &list[test1].assoc6.ip_port : &list[test1].assoc4.ip_port),
                  "Client IP_Port is incorrect");
}