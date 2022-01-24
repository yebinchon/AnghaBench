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
struct ntp_ts_short {int /*<<< orphan*/  frac; int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC1(const struct ntp_ts_short *ts) {
        return FUNC0(ts->sec) + (FUNC0(ts->frac) / 65536.0);
}