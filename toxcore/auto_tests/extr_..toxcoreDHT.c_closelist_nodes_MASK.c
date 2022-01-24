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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  close_clientlist; } ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  LCLIENT_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uint16_t FUNC1(DHT *dht, Node_format *nodes, uint16_t max_num)
{
    return FUNC0(dht->close_clientlist, LCLIENT_LIST, nodes, max_num);
}