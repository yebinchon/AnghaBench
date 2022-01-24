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
typedef  scalar_t__ xmlElementTablePtr ;
typedef  int /*<<< orphan*/ * xmlElementPtr ;
typedef  TYPE_1__* xmlDtdPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_3__ {int /*<<< orphan*/ * elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 

xmlElementPtr
FUNC3(xmlDtdPtr dtd, const xmlChar *name) {
    xmlElementTablePtr table;
    xmlElementPtr cur;
    xmlChar *uqname = NULL, *prefix = NULL;

    if ((dtd == NULL) || (name == NULL)) return(NULL);
    if (dtd->elements == NULL)
	return(NULL);
    table = (xmlElementTablePtr) dtd->elements;

    uqname = FUNC2(name, &prefix);
    if (uqname != NULL)
        name = uqname;
    cur = FUNC1(table, name, prefix);
    if (prefix != NULL) FUNC0(prefix);
    if (uqname != NULL) FUNC0(uqname);
    return(cur);
}