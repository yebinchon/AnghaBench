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
typedef  int /*<<< orphan*/  rio ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 long long LLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int) ; 

long long FUNC2(rio *rdb, int rdbver) {
    int64_t t64;
    if (FUNC1(rdb,&t64,8) == 0) return LLONG_MAX;
    if (rdbver >= 9) /* Check the top comment of this function. */
        FUNC0(&t64); /* Convert in big endian if the system is BE. */
    return (long long)t64;
}