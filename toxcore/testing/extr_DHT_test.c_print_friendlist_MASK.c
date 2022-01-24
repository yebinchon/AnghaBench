#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  assoc6; int /*<<< orphan*/  assoc4; int /*<<< orphan*/  public_key; } ;
struct TYPE_10__ {int num_friends; TYPE_1__* friends_list; } ;
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {TYPE_4__* client_list; int /*<<< orphan*/  public_key; } ;
typedef  TYPE_2__ IP_Port ;
typedef  TYPE_3__ DHT ;
typedef  TYPE_4__ Client_data ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int MAX_FRIEND_CLIENTS ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zeroes_cid ; 

void FUNC7(DHT *dht)
{
    uint32_t i, k;
    IP_Port p_ip;
    FUNC5("_________________FRIENDS__________________________________\n");

    for (k = 0; k < dht->num_friends; k++) {
        FUNC5("FRIEND %u\n", k);
        FUNC5("ID: ");

        FUNC4(dht->friends_list[k].public_key);

        int friendok = FUNC0(dht, dht->friends_list[k].public_key, &p_ip);
        FUNC5("\nIP: %s:%u (%d)", FUNC1(&p_ip.ip), FUNC2(p_ip.port), friendok);

        FUNC5("\nCLIENTS IN LIST:\n\n");

        for (i = 0; i < MAX_FRIEND_CLIENTS; i++) {
            Client_data *client = &dht->friends_list[k].client_list[i];

            if (FUNC6(client->public_key, zeroes_cid) == 0)
                continue;

            FUNC5("ClientID: ");
            FUNC4(client->public_key);

            FUNC3(&client->assoc4, 0);
            FUNC3(&client->assoc6, 0);
        }
    }
}