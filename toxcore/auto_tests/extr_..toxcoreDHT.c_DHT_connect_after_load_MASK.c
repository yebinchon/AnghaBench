#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
struct TYPE_6__ {unsigned int loaded_num_nodes; unsigned int loaded_nodes_index; TYPE_2__* loaded_nodes_list; } ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 unsigned int SAVE_BOOTSTAP_FREQUENCY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(DHT *dht)
{
    if (dht == NULL)
        return -1;

    if (!dht->loaded_nodes_list)
        return -1;

    /* DHT is connected, stop. */
    if (FUNC1(dht)) {
        FUNC2(dht->loaded_nodes_list);
        dht->loaded_nodes_list = NULL;
        dht->loaded_num_nodes = 0;
        return 0;
    }

    unsigned int i;

    for (i = 0; i < dht->loaded_num_nodes && i < SAVE_BOOTSTAP_FREQUENCY; ++i) {
        unsigned int index = dht->loaded_nodes_index % dht->loaded_num_nodes;
        FUNC0(dht, dht->loaded_nodes_list[index].ip_port, dht->loaded_nodes_list[index].public_key);
        ++dht->loaded_nodes_index;
    }

    return 0;
}