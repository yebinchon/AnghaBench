#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ks_raw_bufsize; int /*<<< orphan*/  ks_raw_buf; } ;
typedef  TYPE_1__ kstat_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int KSTAT_RAW_MAX ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(kstat_t *ksp)
{
	if (ksp->ks_raw_bufsize == KSTAT_RAW_MAX)
		return (ENOMEM);

	FUNC2(ksp->ks_raw_buf, ksp->ks_raw_bufsize);
	ksp->ks_raw_bufsize = FUNC0(ksp->ks_raw_bufsize * 2, KSTAT_RAW_MAX);
	ksp->ks_raw_buf = FUNC1(ksp->ks_raw_bufsize, KM_SLEEP);

	return (0);
}