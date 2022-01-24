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
struct TYPE_8__ {int /*<<< orphan*/  dht; int /*<<< orphan*/  net_crypto; TYPE_1__* onion_c; } ;
struct TYPE_7__ {int /*<<< orphan*/  c; int /*<<< orphan*/  dht; } ;
typedef  TYPE_1__ Onion_Client ;
typedef  TYPE_2__ Friend_Connections ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  handle_new_connections ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

Friend_Connections *FUNC3(Onion_Client *onion_c)
{
    if (!onion_c)
        return NULL;

    Friend_Connections *temp = FUNC1(1, sizeof(Friend_Connections));

    if (temp == NULL)
        return NULL;

    temp->dht = onion_c->dht;
    temp->net_crypto = onion_c->c;
    temp->onion_c = onion_c;

    FUNC2(temp->net_crypto, &handle_new_connections, temp);
    FUNC0(temp->dht);

    return temp;
}