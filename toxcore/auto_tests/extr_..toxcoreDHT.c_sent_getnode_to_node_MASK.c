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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_8__ {int /*<<< orphan*/  dht_harden_ping_array; int /*<<< orphan*/  dht_ping_array; } ;
struct TYPE_7__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
typedef  TYPE_1__ Node_format ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_2__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static uint8_t FUNC5(DHT *dht, const uint8_t *public_key, IP_Port node_ip_port, uint64_t ping_id,
                                    Node_format *sendback_node)
{
    uint8_t data[sizeof(Node_format) * 2];

    if (FUNC3(data, sizeof(data), &dht->dht_ping_array, ping_id) == sizeof(Node_format)) {
        FUNC2(sendback_node, 0, sizeof(Node_format));
    } else if (FUNC3(data, sizeof(data), &dht->dht_harden_ping_array, ping_id) == sizeof(data)) {
        FUNC1(sendback_node, data + sizeof(Node_format), sizeof(Node_format));
    } else {
        return 0;
    }

    Node_format test;
    FUNC1(&test, data, sizeof(Node_format));

    if (!FUNC0(&test.ip_port, &node_ip_port) || FUNC4(test.public_key, public_key) != 0)
        return 0;

    return 1;
}