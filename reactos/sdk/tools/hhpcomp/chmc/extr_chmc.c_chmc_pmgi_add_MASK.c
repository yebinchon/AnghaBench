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
struct chmcItspHeader {int /*<<< orphan*/  num_blocks; } ;
struct chmcPmgiChunkNode {struct chmcPmgiChunkNode* pmgi_last; int /*<<< orphan*/  pmgi_list; int /*<<< orphan*/  list; struct chmcItspHeader itsp; } ;
struct chmcFile {struct chmcFile* pmgi_last; int /*<<< orphan*/  pmgi_list; int /*<<< orphan*/  list; struct chmcItspHeader itsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chmcPmgiChunkNode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct chmcFile *chm, struct chmcPmgiChunkNode *pmgi)
{
	struct chmcItspHeader *itsp = &chm->itsp;

	FUNC0(chm);
	FUNC0(pmgi);

	FUNC1(&pmgi->list, &chm->pmgi_list);
	itsp->num_blocks++;

	chm->pmgi_last = pmgi;
}