#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {scalar_t__ ks_magic; scalar_t__ ks_type; int /*<<< orphan*/  ks_lock; int /*<<< orphan*/  ks_raw_bufsize; int /*<<< orphan*/  ks_raw_buf; } ;
typedef  TYPE_1__ kstat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ KSTAT_TYPE_RAW ; 
 scalar_t__ KS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct seq_file *f, void *v)
{
	kstat_t *ksp = (kstat_t *)f->private;
	FUNC0(ksp->ks_magic == KS_MAGIC);

	if (ksp->ks_type == KSTAT_TYPE_RAW)
		FUNC2(ksp->ks_raw_buf, ksp->ks_raw_bufsize);

	FUNC1(ksp->ks_lock);
}