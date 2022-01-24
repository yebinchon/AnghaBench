#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ clusterMsg ;
struct TYPE_8__ {int /*<<< orphan*/  sndbuf; int /*<<< orphan*/  conn; } ;
typedef  TYPE_3__ clusterLink ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int /*<<< orphan*/ * stats_bus_messages_sent; } ;

/* Variables and functions */
 size_t CLUSTERMSG_TYPE_COUNT ; 
 int /*<<< orphan*/  clusterWriteHandler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 

void FUNC4(clusterLink *link, unsigned char *msg, size_t msglen) {
    if (FUNC3(link->sndbuf) == 0 && msglen != 0)
        FUNC0(link->conn, clusterWriteHandler, 1);

    link->sndbuf = FUNC2(link->sndbuf, msg, msglen);

    /* Populate sent messages stats. */
    clusterMsg *hdr = (clusterMsg*) msg;
    uint16_t type = FUNC1(hdr->type);
    if (type < CLUSTERMSG_TYPE_COUNT)
        server.cluster->stats_bus_messages_sent[type]++;
}