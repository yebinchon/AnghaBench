#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  assoc6; int /*<<< orphan*/  assoc4; int /*<<< orphan*/  public_key; } ;
struct TYPE_4__ {TYPE_2__* close_clientlist; } ;
typedef  TYPE_1__ DHT ;
typedef  TYPE_2__ Client_data ;

/* Variables and functions */
 size_t LCLIENT_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zeroes_cid ; 

void FUNC4(DHT *dht)
{
    uint32_t i;
    FUNC2("___________________CLOSE________________________________\n");

    for (i = 0; i < LCLIENT_LIST; i++) {
        Client_data *client = &dht->close_clientlist[i];

        if (FUNC3(client->public_key, zeroes_cid) == 0)
            continue;

        FUNC2("ClientID: ");
        FUNC1(client->public_key);

        FUNC0(&client->assoc4, 1);
        FUNC0(&client->assoc6, 1);
    }
}