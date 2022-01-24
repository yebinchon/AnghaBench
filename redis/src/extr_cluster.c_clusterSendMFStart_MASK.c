#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union clusterMsgData {int dummy; } clusterMsgData ;
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_1__ clusterNode ;
struct TYPE_6__ {int /*<<< orphan*/  totlen; } ;
typedef  TYPE_2__ clusterMsg ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_MFSTART ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(clusterNode *node) {
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen;

    if (!node->link) return;
    FUNC0(hdr,CLUSTERMSG_TYPE_MFSTART);
    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    hdr->totlen = FUNC2(totlen);
    FUNC1(node->link,(unsigned char*)buf,totlen);
}