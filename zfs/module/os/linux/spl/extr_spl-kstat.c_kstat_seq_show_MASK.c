#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
typedef  int /*<<< orphan*/  kstat_timer_t ;
struct TYPE_4__ {int (* data ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;} ;
struct TYPE_5__ {scalar_t__ ks_magic; int ks_type; int ks_ndata; int /*<<< orphan*/  ks_data_size; int /*<<< orphan*/  ks_data; int /*<<< orphan*/  ks_raw_buf; int /*<<< orphan*/  ks_raw_bufsize; TYPE_1__ ks_raw_ops; } ;
typedef  TYPE_2__ kstat_t ;
typedef  int /*<<< orphan*/  kstat_named_t ;
typedef  int /*<<< orphan*/  kstat_io_t ;
typedef  int /*<<< orphan*/  kstat_intr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
#define  KSTAT_TYPE_INTR 132 
#define  KSTAT_TYPE_IO 131 
#define  KSTAT_TYPE_NAMED 130 
#define  KSTAT_TYPE_RAW 129 
#define  KSTAT_TYPE_TIMER 128 
 scalar_t__ KS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC10(struct seq_file *f, void *p)
{
	kstat_t *ksp = (kstat_t *)f->private;
	int rc = 0;

	FUNC0(ksp->ks_magic == KS_MAGIC);

	switch (ksp->ks_type) {
		case KSTAT_TYPE_RAW:
restart:
			if (ksp->ks_raw_ops.data) {
				rc = ksp->ks_raw_ops.data(
				    ksp->ks_raw_buf, ksp->ks_raw_bufsize, p);
				if (rc == ENOMEM && !FUNC2(ksp))
					goto restart;
				if (!rc)
					FUNC8(f, ksp->ks_raw_buf);
			} else {
				FUNC0(ksp->ks_ndata == 1);
				rc = FUNC6(f, ksp->ks_data,
				    ksp->ks_data_size);
			}
			break;
		case KSTAT_TYPE_NAMED:
			rc = FUNC5(f, (kstat_named_t *)p);
			break;
		case KSTAT_TYPE_INTR:
			rc = FUNC3(f, (kstat_intr_t *)p);
			break;
		case KSTAT_TYPE_IO:
			rc = FUNC4(f, (kstat_io_t *)p);
			break;
		case KSTAT_TYPE_TIMER:
			rc = FUNC7(f, (kstat_timer_t *)p);
			break;
		default:
			FUNC1("Undefined kstat type %d\n", ksp->ks_type);
	}

	return (-rc);
}