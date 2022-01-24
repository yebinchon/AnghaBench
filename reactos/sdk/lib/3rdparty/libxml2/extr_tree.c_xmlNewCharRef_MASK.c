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
typedef  TYPE_1__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlNode ;
typedef  int /*<<< orphan*/  xmlDocPtr ;
typedef  char xmlChar ;
struct TYPE_5__ {void* name; int /*<<< orphan*/  doc; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ENTITY_REF_NODE ; 
 scalar_t__ __xmlRegisterCallbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 void* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

xmlNodePtr
FUNC7(xmlDocPtr doc, const xmlChar *name) {
    xmlNodePtr cur;

    if (name == NULL)
        return(NULL);

    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) FUNC1(sizeof(xmlNode));
    if (cur == NULL) {
	FUNC6("building character reference");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xmlNode));
    cur->type = XML_ENTITY_REF_NODE;

    cur->doc = doc;
    if (name[0] == '&') {
        int len;
        name++;
	len = FUNC4(name);
	if (name[len - 1] == ';')
	    cur->name = FUNC5(name, len - 1);
	else
	    cur->name = FUNC5(name, len);
    } else
	cur->name = FUNC3(name);

    if ((__xmlRegisterCallbacks) && (&xmlRegisterNodeDefaultValue))
	FUNC2(cur);
    return(cur);
}