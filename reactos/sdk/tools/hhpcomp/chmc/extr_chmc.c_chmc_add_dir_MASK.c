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
struct chmcFile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chmcFile*) ; 
 struct chmcTreeNode* FUNC1 (struct chmcFile*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct chmcTreeNode *FUNC2(struct chmcFile *chm, const char *dir)
{
	FUNC0(chm);

	return FUNC1(chm, dir, 0, 0, NULL, 0, 0);
}