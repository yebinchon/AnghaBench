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
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

xmlElementPtr
FUNC1(xmlDtdPtr dtd, const xmlChar *name,
	              const xmlChar *prefix) {
    xmlElementTablePtr table;

    if (dtd == NULL) return(NULL);
    if (dtd->elements == NULL) return(NULL);
    table = (xmlElementTablePtr) dtd->elements;

    return(FUNC0(table, name, prefix));
}