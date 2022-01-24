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
struct chmcSection {int /*<<< orphan*/  mark_count; int /*<<< orphan*/  mark_list; } ;
struct chmcResetTableMark {int /*<<< orphan*/  list; int /*<<< orphan*/  at; } ;
struct chmcFile {struct chmcSection** sections; } ;
typedef  int /*<<< orphan*/  UInt64 ;

/* Variables and functions */
 int CHMC_ENOMEM ; 
 int CHMC_NOERR ; 
 int /*<<< orphan*/  _CHMC_RSTTBL_MARK ; 
 int /*<<< orphan*/  FUNC0 (struct chmcFile*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct chmcResetTableMark* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct chmcFile *chm, UInt64 at)
{
	struct chmcSection *section;
	struct chmcResetTableMark *mark;

	FUNC0(chm);

	section = chm->sections[1];

	mark = FUNC3(_CHMC_RSTTBL_MARK);
	if (mark) {
		mark->at = at;
		FUNC1("[%d] at: %jd\n", section->mark_count, at);
		FUNC2(&mark->list, &section->mark_list);
		section->mark_count++;
		return CHMC_NOERR;
	}

	return CHMC_ENOMEM;
}