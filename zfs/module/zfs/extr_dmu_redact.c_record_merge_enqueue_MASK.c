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
struct redact_record {scalar_t__ end_object; scalar_t__ start_object; scalar_t__ end_blkid; scalar_t__ start_blkid; scalar_t__ eos_marker; } ;
typedef  int /*<<< orphan*/  bqueue_t ;

/* Variables and functions */
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct redact_record*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct redact_record*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct redact_record*,int) ; 

__attribute__((used)) static void
FUNC3(bqueue_t *q, struct redact_record **build,
    struct redact_record *new)
{
	if (new->eos_marker) {
		if (*build != NULL)
			FUNC0(q, *build, sizeof (*build));
		FUNC1(q, new, sizeof (*new));
		return;
	}
	if (*build == NULL) {
		*build = new;
		return;
	}
	struct redact_record *curbuild = *build;
	if ((curbuild->end_object == new->start_object &&
	    curbuild->end_blkid + 1 == new->start_blkid &&
	    curbuild->end_blkid != UINT64_MAX) ||
	    (curbuild->end_object + 1 == new->start_object &&
	    curbuild->end_blkid == UINT64_MAX && new->start_blkid == 0)) {
		curbuild->end_object = new->end_object;
		curbuild->end_blkid = new->end_blkid;
		FUNC2(new, sizeof (*new));
	} else {
		FUNC0(q, curbuild, sizeof (*curbuild));
		*build = new;
	}
}