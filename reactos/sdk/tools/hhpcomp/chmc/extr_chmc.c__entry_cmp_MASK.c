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
struct chmcTreeNode {size_t prefixlen; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(const void *pva, const void *pvb)
{
	const struct chmcTreeNode * const *pa = pva;
	const struct chmcTreeNode * const *pb = pvb;
	const struct chmcTreeNode *a = *pa, *b = *pb;

	return FUNC0( &a->name[a->prefixlen], &b->name[b->prefixlen] );
}