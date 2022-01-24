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
struct siphash {int dummy; } ;
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,struct siphash*) ; 

void FUNC1(const sd_id128_t *p, struct siphash *state) {
        FUNC0(p, sizeof(sd_id128_t), state);
}