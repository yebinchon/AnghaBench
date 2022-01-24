#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  TYPE_1__* xmlDtdPtr ;
typedef  int /*<<< orphan*/  xmlDtd ;
typedef  TYPE_2__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_7__ {TYPE_1__* extSubset; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_2__* doc; void* SystemID; void* ExternalID; void* name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_DTD_NODE ; 
 scalar_t__ __xmlRegisterCallbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

xmlDtdPtr
FUNC6(xmlDocPtr doc, const xmlChar *name,
                    const xmlChar *ExternalID, const xmlChar *SystemID) {
    xmlDtdPtr cur;

    if ((doc != NULL) && (doc->extSubset != NULL)) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlNewDtd(%s): document %s already have a DTD %s\n",
	    /* !!! */ (char *) name, doc->name,
	    /* !!! */ (char *)doc->extSubset->name);
#endif
	return(NULL);
    }

    /*
     * Allocate a new DTD and fill the fields.
     */
    cur = (xmlDtdPtr) FUNC2(sizeof(xmlDtd));
    if (cur == NULL) {
	FUNC5("building DTD");
	return(NULL);
    }
    FUNC0(cur, 0 , sizeof(xmlDtd));
    cur->type = XML_DTD_NODE;

    if (name != NULL)
	cur->name = FUNC4(name);
    if (ExternalID != NULL)
	cur->ExternalID = FUNC4(ExternalID);
    if (SystemID != NULL)
	cur->SystemID = FUNC4(SystemID);
    if (doc != NULL)
	doc->extSubset = cur;
    cur->doc = doc;

    if ((__xmlRegisterCallbacks) && (&xmlRegisterNodeDefaultValue))
	FUNC3((xmlNodePtr)cur);
    return(cur);
}