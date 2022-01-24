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
struct chmcTreeNode {int dummy; } ;
struct chmcFile {int entries_num; struct chmcTreeNode** sort_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chmcFile*) ; 
 int /*<<< orphan*/  FUNC1 (struct chmcFile*,struct chmcTreeNode*) ; 

void FUNC2(struct chmcFile *chm)
{
	struct chmcTreeNode *entry;
	int i;

	FUNC0(chm);

	for(i=0; i < chm->entries_num; i++) {
		entry = chm->sort_entries[i];
		FUNC1(chm, entry);
	}
}