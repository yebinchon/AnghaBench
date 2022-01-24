#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlDtdPtr ;
typedef  int /*<<< orphan*/  const xmlChar ;
typedef  int /*<<< orphan*/ * xmlAttributeTablePtr ;
typedef  int /*<<< orphan*/ * xmlAttributePtr ;
struct TYPE_3__ {int /*<<< orphan*/ * attributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 

xmlAttributePtr
FUNC3(xmlDtdPtr dtd, const xmlChar *elem, const xmlChar *name) {
    xmlAttributeTablePtr table;
    xmlAttributePtr cur;
    xmlChar *uqname = NULL, *prefix = NULL;

    if (dtd == NULL) return(NULL);
    if (dtd->attributes == NULL) return(NULL);

    table = (xmlAttributeTablePtr) dtd->attributes;
    if (table == NULL)
	return(NULL);

    uqname = FUNC2(name, &prefix);

    if (uqname != NULL) {
	cur = FUNC1(table, uqname, prefix, elem);
	if (prefix != NULL) FUNC0(prefix);
	if (uqname != NULL) FUNC0(uqname);
    } else
	cur = FUNC1(table, name, NULL, elem);
    return(cur);
}