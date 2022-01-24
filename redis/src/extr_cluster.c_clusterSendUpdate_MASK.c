#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  slots; int /*<<< orphan*/  configEpoch; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ clusterNode ;
struct TYPE_8__ {int /*<<< orphan*/  slots; int /*<<< orphan*/  configEpoch; int /*<<< orphan*/  nodename; } ;
struct TYPE_10__ {TYPE_1__ nodecfg; } ;
struct TYPE_9__ {TYPE_3__ update; } ;
struct TYPE_12__ {int /*<<< orphan*/  totlen; TYPE_2__ data; } ;
typedef  TYPE_5__ clusterMsg ;
typedef  int /*<<< orphan*/  clusterLink ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_UPDATE ; 
 int CLUSTER_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(clusterLink *link, clusterNode *node) {
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;

    if (link == NULL) return;
    FUNC0(hdr,CLUSTERMSG_TYPE_UPDATE);
    FUNC3(hdr->data.update.nodecfg.nodename,node->name,CLUSTER_NAMELEN);
    hdr->data.update.nodecfg.configEpoch = FUNC2(node->configEpoch);
    FUNC3(hdr->data.update.nodecfg.slots,node->slots,sizeof(node->slots));
    FUNC1(link,(unsigned char*)buf,FUNC4(hdr->totlen));
}