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
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 

int
FUNC1(dsl_pool_t *dp, const char *name, void *tag,
    dsl_dataset_t **dsp)
{
	return (FUNC0(dp, name, 0, tag, dsp));
}