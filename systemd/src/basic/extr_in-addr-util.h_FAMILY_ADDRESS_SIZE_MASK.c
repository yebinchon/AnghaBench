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
 int /*<<< orphan*/  AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t FUNC2(int family) {
        FUNC1(FUNC0(family, AF_INET, AF_INET6));
        return family == AF_INET6 ? 16 : 4;
}