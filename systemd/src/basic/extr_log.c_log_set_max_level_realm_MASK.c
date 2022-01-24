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
typedef  size_t LogRealm ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int LOG_PRIMASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* log_max_level ; 

void FUNC2(LogRealm realm, int level) {
        FUNC1((level & LOG_PRIMASK) == level);
        FUNC1(realm < FUNC0(log_max_level));

        log_max_level[realm] = level;
}