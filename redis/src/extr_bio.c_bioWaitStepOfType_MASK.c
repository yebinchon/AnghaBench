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
 int /*<<< orphan*/ * bio_mutex ; 
 unsigned long long* bio_pending ; 
 int /*<<< orphan*/ * bio_step_cond ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

unsigned long long FUNC3(int type) {
    unsigned long long val;
    FUNC1(&bio_mutex[type]);
    val = bio_pending[type];
    if (val != 0) {
        FUNC0(&bio_step_cond[type],&bio_mutex[type]);
        val = bio_pending[type];
    }
    FUNC2(&bio_mutex[type]);
    return val;
}