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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  DUID_TYPE_LLT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(
                sd_dhcp_client *client,
                bool iaid_set,
                uint32_t iaid,
                usec_t llt_time) {
        return FUNC0(client, true, iaid_set, iaid, DUID_TYPE_LLT, NULL, 0, llt_time);
}