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
 int ZSTD_CHAINLOG_MAX ; 
 int ZSTD_HASHLOG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(void)
{   /* these constants shall not depend on MIN() macro */
    FUNC0(ZSTD_HASHLOG_MAX < 31);
    FUNC0(ZSTD_CHAINLOG_MAX < 31);
}