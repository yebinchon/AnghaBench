#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlNsPtr ;
typedef  TYPE_1__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlNode ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_5__ {int /*<<< orphan*/  ns; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ELEMENT_NODE ; 
 scalar_t__ __xmlRegisterCallbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

xmlNodePtr
FUNC6(xmlNsPtr ns, const xmlChar *name) {
    xmlNodePtr cur;

    if (name == NULL) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlNewNode : name == NULL\n");
#endif
	return(NULL);
    }

    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) FUNC2(sizeof(xmlNode));
    if (cur == NULL) {
	FUNC5("building node");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xmlNode));
    cur->type = XML_ELEMENT_NODE;

    cur->name = FUNC4(name);
    cur->ns = ns;

    if ((__xmlRegisterCallbacks) && (&xmlRegisterNodeDefaultValue))
	FUNC3(cur);
    return(cur);
}