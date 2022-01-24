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
struct chmcSection {int /*<<< orphan*/  offset; } ;
struct chmcFile {int sections_num; struct chmcSection** sections; } ;
typedef  scalar_t__ UInt64 ;
typedef  int /*<<< orphan*/  UInt16 ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chmcFile*) ; 
 struct chmcTreeNode* FUNC1 (struct chmcFile*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

struct chmcTreeNode *FUNC2(struct chmcFile *chm, const char *filename,
                                   UInt16 prefixlen, int sect_id, UChar *buf,
                                   UInt64 len)
{
	struct chmcSection *section;
	struct chmcTreeNode *node;

	FUNC0(chm);

	if (sect_id >= chm->sections_num)
		return NULL;

	section = chm->sections[sect_id];

	node = FUNC1(chm, filename, prefixlen, sect_id, NULL,
	                      section->offset, len);

	if ((node) && (len > 0))
		section->offset += len;

	return node;
}