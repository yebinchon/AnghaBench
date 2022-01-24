#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ ks_magic; scalar_t__ ks_type; int ks_flags; scalar_t__ ks_ndata; int /*<<< orphan*/  ks_snaptime; int /*<<< orphan*/  (* ks_update ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ks_raw_bufsize; int /*<<< orphan*/  ks_raw_buf; int /*<<< orphan*/  ks_lock; } ;
typedef  TYPE_1__ kstat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int KSTAT_FLAG_NO_HEADERS ; 
 int /*<<< orphan*/  KSTAT_READ ; 
 scalar_t__ KSTAT_TYPE_RAW ; 
 scalar_t__ KS_MAGIC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC7(struct seq_file *f, loff_t *pos)
{
	loff_t n = *pos;
	kstat_t *ksp = (kstat_t *)f->private;
	FUNC0(ksp->ks_magic == KS_MAGIC);

	FUNC4(ksp->ks_lock);

	if (ksp->ks_type == KSTAT_TYPE_RAW) {
		ksp->ks_raw_bufsize = PAGE_SIZE;
		ksp->ks_raw_buf = FUNC6(ksp->ks_raw_bufsize, KM_SLEEP);
	}

	/* Dynamically update kstat, on error existing kstats are used */
	(void) ksp->ks_update(ksp, KSTAT_READ);

	ksp->ks_snaptime = FUNC1();

	if (!(ksp->ks_flags & KSTAT_FLAG_NO_HEADERS) && !n &&
	    FUNC3(f))
		return (NULL);

	if (n >= ksp->ks_ndata)
		return (NULL);

	return (FUNC2(ksp, n));
}