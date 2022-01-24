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
typedef  TYPE_2__* xmlEntityPtr ;
typedef  int /*<<< orphan*/  xmlDoc ;
typedef  char xmlChar ;
struct TYPE_8__ {int /*<<< orphan*/  content; } ;
struct TYPE_7__ {struct TYPE_7__* last; struct TYPE_7__* children; int /*<<< orphan*/  content; void* name; int /*<<< orphan*/ * doc; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ENTITY_REF_NODE ; 
 scalar_t__ __xmlRegisterCallbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*,void*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 void* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

xmlNodePtr
FUNC8(const xmlDoc *doc, const xmlChar *name) {
    xmlNodePtr cur;
    xmlEntityPtr ent;

    if (name == NULL)
        return(NULL);

    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) FUNC2(sizeof(xmlNode));
    if (cur == NULL) {
	FUNC7("building reference");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xmlNode));
    cur->type = XML_ENTITY_REF_NODE;

    cur->doc = (xmlDoc *)doc;
    if (name[0] == '&') {
        int len;
        name++;
	len = FUNC5(name);
	if (name[len - 1] == ';')
	    cur->name = FUNC6(name, len - 1);
	else
	    cur->name = FUNC6(name, len);
    } else
	cur->name = FUNC4(name);

    ent = FUNC1(doc, cur->name);
    if (ent != NULL) {
	cur->content = ent->content;
	/*
	 * The parent pointer in entity is a DTD pointer and thus is NOT
	 * updated.  Not sure if this is 100% correct.
	 *  -George
	 */
	cur->children = (xmlNodePtr) ent;
	cur->last = (xmlNodePtr) ent;
    }

    if ((__xmlRegisterCallbacks) && (&xmlRegisterNodeDefaultValue))
	FUNC3(cur);
    return(cur);
}