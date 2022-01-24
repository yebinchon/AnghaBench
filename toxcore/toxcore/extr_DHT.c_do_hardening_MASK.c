#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sa_family_t ;
struct TYPE_16__ {int /*<<< orphan*/  self_public_key; TYPE_1__* close_clientlist; } ;
struct TYPE_13__ {scalar_t__ send_nodes_ok; int /*<<< orphan*/  send_nodes_timestamp; int /*<<< orphan*/ * send_nodes_pingedid; } ;
struct TYPE_15__ {TYPE_2__ hardening; int /*<<< orphan*/  ip_port; int /*<<< orphan*/  timestamp; } ;
struct TYPE_14__ {int /*<<< orphan*/ * public_key; int /*<<< orphan*/  ip_port; } ;
struct TYPE_12__ {TYPE_4__ assoc6; TYPE_4__ assoc4; int /*<<< orphan*/ * public_key; } ;
typedef  TYPE_3__ Node_format ;
typedef  TYPE_4__ IPPTsPng ;
typedef  TYPE_5__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  BAD_NODE_TIMEOUT ; 
 int /*<<< orphan*/  HARDENING_INTERVAL ; 
 int /*<<< orphan*/  HARDEN_TIMEOUT ; 
 int LCLIENT_LIST ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(DHT *dht)
{
    uint32_t i;

    for (i = 0; i < LCLIENT_LIST * 2; ++i) {
        IPPTsPng  *cur_iptspng;
        sa_family_t sa_family;
        uint8_t   *public_key = dht->close_clientlist[i / 2].public_key;

        if (i % 2 == 0) {
            cur_iptspng = &dht->close_clientlist[i / 2].assoc4;
            sa_family = AF_INET;
        } else {
            cur_iptspng = &dht->close_clientlist[i / 2].assoc6;
            sa_family = AF_INET6;
        }

        if (FUNC2(cur_iptspng->timestamp, BAD_NODE_TIMEOUT))
            continue;

        if (cur_iptspng->hardening.send_nodes_ok == 0) {
            if (FUNC2(cur_iptspng->hardening.send_nodes_timestamp, HARDENING_INTERVAL)) {
                Node_format rand_node = FUNC4(dht, sa_family);

                if (!FUNC1(&rand_node.ip_port))
                    continue;

                if (FUNC0(public_key, rand_node.public_key))
                    continue;

                Node_format to_test;
                to_test.ip_port = cur_iptspng->ip_port;
                FUNC3(to_test.public_key, public_key, crypto_box_PUBLICKEYBYTES);

                //TODO: The search id should maybe not be ours?
                if (FUNC5(dht, &rand_node, &to_test, dht->self_public_key) > 0) {
                    FUNC3(cur_iptspng->hardening.send_nodes_pingedid, rand_node.public_key, crypto_box_PUBLICKEYBYTES);
                    cur_iptspng->hardening.send_nodes_timestamp = FUNC6();
                }
            }
        } else {
            if (FUNC2(cur_iptspng->hardening.send_nodes_timestamp, HARDEN_TIMEOUT)) {
                cur_iptspng->hardening.send_nodes_ok = 0;
            }
        }

        //TODO: add the 2 other testers.
    }
}