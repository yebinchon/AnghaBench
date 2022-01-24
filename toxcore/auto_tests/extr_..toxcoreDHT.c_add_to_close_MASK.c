#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {scalar_t__ port; int /*<<< orphan*/  ip; } ;
struct TYPE_10__ {scalar_t__ family; } ;
struct TYPE_12__ {TYPE_1__ ip; } ;
struct TYPE_13__ {scalar_t__ ret_timestamp; TYPE_2__ ret_ip_port; int /*<<< orphan*/  timestamp; TYPE_3__ ip_port; } ;
struct TYPE_15__ {int /*<<< orphan*/  public_key; TYPE_4__ assoc4; TYPE_4__ assoc6; } ;
struct TYPE_14__ {TYPE_6__* close_clientlist; int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_3__ IP_Port ;
typedef  TYPE_4__ IPPTsPng ;
typedef  TYPE_5__ DHT ;
typedef  TYPE_6__ Client_data ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  BAD_NODE_TIMEOUT ; 
 unsigned int LCLIENT_LENGTH ; 
 unsigned int LCLIENT_NODES ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(DHT *dht, const uint8_t *public_key, IP_Port ip_port, _Bool simulate)
{
    unsigned int i;

    unsigned int index = FUNC0(public_key, dht->self_public_key);

    if (index > LCLIENT_LENGTH)
        index = LCLIENT_LENGTH - 1;

    for (i = 0; i < LCLIENT_NODES; ++i) {
        Client_data *client = &dht->close_clientlist[(index * LCLIENT_NODES) + i];

        if (FUNC3(client->assoc4.timestamp, BAD_NODE_TIMEOUT) && FUNC3(client->assoc6.timestamp, BAD_NODE_TIMEOUT)) {
            if (!simulate) {
                IPPTsPng *ipptp_write = NULL;
                IPPTsPng *ipptp_clear = NULL;

                if (ip_port.ip.family == AF_INET) {
                    ipptp_write = &client->assoc4;
                    ipptp_clear = &client->assoc6;
                } else {
                    ipptp_write = &client->assoc6;
                    ipptp_clear = &client->assoc4;
                }

                FUNC1(client->public_key, public_key);
                ipptp_write->ip_port = ip_port;
                ipptp_write->timestamp = FUNC5();

                FUNC2(&ipptp_write->ret_ip_port.ip);
                ipptp_write->ret_ip_port.port = 0;
                ipptp_write->ret_timestamp = 0;

                /* zero out other address */
                FUNC4(ipptp_clear, 0, sizeof(*ipptp_clear));
            }

            return 0;
        }
    }

    return -1;
}