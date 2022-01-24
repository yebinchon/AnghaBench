#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/ * ClusterSizeLabel ; 
 unsigned int MAX_CLUSTER_SIZES ; 
 unsigned int MSG_026 ; 
 unsigned int MSG_029 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int i, j, msg_id;
	FUNC1(ClusterSizeLabel[0], 64, FUNC0(MSG_029));
	for (i=512, j=1, msg_id=MSG_026; j<MAX_CLUSTER_SIZES; i<<=1, j++) {
		if (i > 8192) {
			i /= 1024;
			msg_id++;
		}
		FUNC1(ClusterSizeLabel[j], 64, "%d %s", i, FUNC0(msg_id));
	}
}