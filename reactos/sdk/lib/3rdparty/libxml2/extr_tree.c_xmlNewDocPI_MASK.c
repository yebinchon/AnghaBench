#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlNode ;
typedef  TYPE_2__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_8__ {int /*<<< orphan*/ * dict; } ;
struct TYPE_7__ {TYPE_2__* doc; void* content; void* name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_PI_NODE ; 
 scalar_t__ __xmlRegisterCallbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

xmlNodePtr
FUNC7(xmlDocPtr doc, const xmlChar *name, const xmlChar *content) {
    xmlNodePtr cur;

    if (name == NULL) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlNewPI : name == NULL\n");
#endif
	return(NULL);
    }

    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) FUNC3(sizeof(xmlNode));
    if (cur == NULL) {
	FUNC6("building PI");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xmlNode));
    cur->type = XML_PI_NODE;

    if ((doc != NULL) && (doc->dict != NULL))
        cur->name = FUNC1(doc->dict, name, -1);
    else
	cur->name = FUNC5(name);
    if (content != NULL) {
	cur->content = FUNC5(content);
    }
    cur->doc = doc;

    if ((__xmlRegisterCallbacks) && (&xmlRegisterNodeDefaultValue))
	FUNC4((xmlNodePtr)cur);
    return(cur);
}