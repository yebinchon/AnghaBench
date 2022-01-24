#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_6__ {char* c; int /*<<< orphan*/  ul; int /*<<< orphan*/  l; scalar_t__ ui64; scalar_t__ i64; int /*<<< orphan*/  ui32; int /*<<< orphan*/  i32; } ;
struct TYPE_7__ {int data_type; TYPE_1__ value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ kstat_named_t ;

/* Variables and functions */
#define  KSTAT_DATA_CHAR 135 
#define  KSTAT_DATA_INT32 134 
#define  KSTAT_DATA_INT64 133 
#define  KSTAT_DATA_LONG 132 
#define  KSTAT_DATA_STRING 131 
#define  KSTAT_DATA_UINT32 130 
#define  KSTAT_DATA_UINT64 129 
#define  KSTAT_DATA_ULONG 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct seq_file *f, kstat_named_t *knp)
{
	FUNC3(f, "%-31s %-4d ", knp->name, knp->data_type);

	switch (knp->data_type) {
		case KSTAT_DATA_CHAR:
			knp->value.c[15] = '\0'; /* NULL terminate */
			FUNC3(f, "%-16s", knp->value.c);
			break;
		/*
		 * NOTE - We need to be more careful able what tokens are
		 * used for each arch, for now this is correct for x86_64.
		 */
		case KSTAT_DATA_INT32:
			FUNC3(f, "%d", knp->value.i32);
			break;
		case KSTAT_DATA_UINT32:
			FUNC3(f, "%u", knp->value.ui32);
			break;
		case KSTAT_DATA_INT64:
			FUNC3(f, "%lld", (signed long long)knp->value.i64);
			break;
		case KSTAT_DATA_UINT64:
			FUNC3(f, "%llu",
			    (unsigned long long)knp->value.ui64);
			break;
		case KSTAT_DATA_LONG:
			FUNC3(f, "%ld", knp->value.l);
			break;
		case KSTAT_DATA_ULONG:
			FUNC3(f, "%lu", knp->value.ul);
			break;
		case KSTAT_DATA_STRING:
			FUNC1(knp)
				[FUNC0(knp)-1] = '\0';
			FUNC3(f, "%s", FUNC1(knp));
			break;
		default:
			FUNC2("Undefined kstat data type %d\n", knp->data_type);
	}

	FUNC3(f, "\n");

	return (0);
}