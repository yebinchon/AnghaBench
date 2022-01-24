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
struct TYPE_4__ {int (* headers ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {scalar_t__ ks_magic; int ks_type; int /*<<< orphan*/  ks_raw_buf; int /*<<< orphan*/  ks_raw_bufsize; TYPE_1__ ks_raw_ops; int /*<<< orphan*/  ks_snaptime; int /*<<< orphan*/  ks_crtime; scalar_t__ ks_data_size; int /*<<< orphan*/  ks_ndata; int /*<<< orphan*/  ks_flags; int /*<<< orphan*/  ks_kid; } ;
typedef  TYPE_2__ kstat_t ;

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
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct seq_file *f)
{
	kstat_t *ksp = (kstat_t *)f->private;
	int rc = 0;

	FUNC0(ksp->ks_magic == KS_MAGIC);

	FUNC3(f, "%d %d 0x%02x %d %d %lld %lld\n",
	    ksp->ks_kid, ksp->ks_type, ksp->ks_flags,
	    ksp->ks_ndata, (int)ksp->ks_data_size,
	    ksp->ks_crtime, ksp->ks_snaptime);

	switch (ksp->ks_type) {
		case KSTAT_TYPE_RAW:
restart:
			if (ksp->ks_raw_ops.headers) {
				rc = ksp->ks_raw_ops.headers(
				    ksp->ks_raw_buf, ksp->ks_raw_bufsize);
				if (rc == ENOMEM && !FUNC2(ksp))
					goto restart;
				if (!rc)
					FUNC4(f, ksp->ks_raw_buf);
			} else {
				FUNC3(f, "raw data\n");
			}
			break;
		case KSTAT_TYPE_NAMED:
			FUNC3(f, "%-31s %-4s %s\n",
			    "name", "type", "data");
			break;
		case KSTAT_TYPE_INTR:
			FUNC3(f, "%-8s %-8s %-8s %-8s %-8s\n",
			    "hard", "soft", "watchdog",
			    "spurious", "multsvc");
			break;
		case KSTAT_TYPE_IO:
			FUNC3(f,
			    "%-8s %-8s %-8s %-8s %-8s %-8s "
			    "%-8s %-8s %-8s %-8s %-8s %-8s\n",
			    "nread", "nwritten", "reads", "writes",
			    "wtime", "wlentime", "wupdate",
			    "rtime", "rlentime", "rupdate",
			    "wcnt", "rcnt");
			break;
		case KSTAT_TYPE_TIMER:
			FUNC3(f,
			    "%-31s %-8s "
			    "%-8s %-8s %-8s %-8s %-8s\n",
			    "name", "events", "elapsed",
			    "min", "max", "start", "stop");
			break;
		default:
			FUNC1("Undefined kstat type %d\n", ksp->ks_type);
	}

	return (-rc);
}