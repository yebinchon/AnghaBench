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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_DELROUTE ; 
 int /*<<< orphan*/  RTM_GETROUTE ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 

__attribute__((used)) static inline bool FUNC1(uint16_t type) {
        return FUNC0(type, RTM_NEWROUTE, RTM_GETROUTE, RTM_DELROUTE);
}