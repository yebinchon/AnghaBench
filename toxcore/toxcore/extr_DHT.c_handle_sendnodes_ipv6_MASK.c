#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
typedef  TYPE_1__ Node_format ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 int MAX_SENT_NODES ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__*,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT *dht = object;
    Node_format plain_nodes[MAX_SENT_NODES];
    uint32_t num_nodes;

    if (FUNC0(object, source, packet, length, plain_nodes, MAX_SENT_NODES, &num_nodes))
        return 1;

    if (num_nodes == 0)
        return 0;

    uint32_t i;

    for (i = 0; i < num_nodes; i++) {

        if (FUNC1(&plain_nodes[i].ip_port)) {
            FUNC2(dht, plain_nodes[i].public_key, plain_nodes[i].ip_port);
            FUNC3(dht, plain_nodes[i].ip_port, plain_nodes[i].public_key, packet + 1);
        }
    }

    return 0;
}