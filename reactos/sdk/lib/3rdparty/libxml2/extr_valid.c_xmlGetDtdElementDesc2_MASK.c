#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xmlElementTablePtr ;
typedef  TYPE_2__* xmlElementPtr ;
typedef  int /*<<< orphan*/  xmlElement ;
typedef  TYPE_3__* xmlDtdPtr ;
typedef  int /*<<< orphan*/ * xmlDictPtr ;
typedef  int /*<<< orphan*/  const xmlChar ;
struct TYPE_11__ {int /*<<< orphan*/ * elements; TYPE_1__* doc; } ;
struct TYPE_10__ {int /*<<< orphan*/  etype; void* prefix; void* name; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ELEMENT_DECL ; 
 int /*<<< orphan*/  XML_ELEMENT_TYPE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 
 void* FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xmlElementPtr
FUNC9(xmlDtdPtr dtd, const xmlChar *name, int create) {
    xmlElementTablePtr table;
    xmlElementPtr cur;
    xmlChar *uqname = NULL, *prefix = NULL;

    if (dtd == NULL) return(NULL);
    if (dtd->elements == NULL) {
	xmlDictPtr dict = NULL;

	if (dtd->doc != NULL)
	    dict = dtd->doc->dict;

	if (!create)
	    return(NULL);
	/*
	 * Create the Element table if needed.
	 */
	table = (xmlElementTablePtr) dtd->elements;
	if (table == NULL) {
	    table = FUNC3(0, dict);
	    dtd->elements = (void *) table;
	}
	if (table == NULL) {
	    FUNC8(NULL, "element table allocation failed");
	    return(NULL);
	}
    }
    table = (xmlElementTablePtr) dtd->elements;

    uqname = FUNC6(name, &prefix);
    if (uqname != NULL)
        name = uqname;
    cur = FUNC4(table, name, prefix);
    if ((cur == NULL) && (create)) {
	cur = (xmlElementPtr) FUNC5(sizeof(xmlElement));
	if (cur == NULL) {
	    FUNC8(NULL, "malloc failed");
	    return(NULL);
	}
	FUNC0(cur, 0, sizeof(xmlElement));
	cur->type = XML_ELEMENT_DECL;

	/*
	 * fill the structure.
	 */
	cur->name = FUNC7(name);
	cur->prefix = FUNC7(prefix);
	cur->etype = XML_ELEMENT_TYPE_UNDEFINED;

	FUNC2(table, name, prefix, cur);
    }
    if (prefix != NULL) FUNC1(prefix);
    if (uqname != NULL) FUNC1(uqname);
    return(cur);
}