#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ name; TYPE_1__* parent; struct TYPE_16__* prev; struct TYPE_16__* next; int /*<<< orphan*/  doc; int /*<<< orphan*/  content; } ;
struct TYPE_15__ {TYPE_2__* last; } ;

/* Variables and functions */
 scalar_t__ XML_ATTRIBUTE_NODE ; 
 scalar_t__ XML_NAMESPACE_DECL ; 
 scalar_t__ XML_TEXT_NODE ; 
 TYPE_2__* FUNC0 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

xmlNodePtr
FUNC10(xmlNodePtr cur, xmlNodePtr elem) {
    if ((cur == NULL) || (cur->type == XML_NAMESPACE_DECL)) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlAddNextSibling : cur == NULL\n");
#endif
	return(NULL);
    }
    if ((elem == NULL) || (elem->type == XML_NAMESPACE_DECL)) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlAddNextSibling : elem == NULL\n");
#endif
	return(NULL);
    }

    if (cur == elem) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlAddNextSibling : cur == elem\n");
#endif
	return(NULL);
    }

    FUNC9(elem);

    if (elem->type == XML_TEXT_NODE) {
	if (cur->type == XML_TEXT_NODE) {
	    FUNC4(cur, elem->content);
	    FUNC2(elem);
	    return(cur);
	}
	if ((cur->next != NULL) && (cur->next->type == XML_TEXT_NODE) &&
            (cur->name == cur->next->name)) {
	    xmlChar *tmp;

	    tmp = FUNC8(elem->content);
	    tmp = FUNC7(tmp, cur->next->content);
	    FUNC5(cur->next, tmp);
	    FUNC1(tmp);
	    FUNC2(elem);
	    return(cur->next);
	}
    } else if (elem->type == XML_ATTRIBUTE_NODE) {
		return FUNC0(cur, cur, elem);
    }

    if (elem->doc != cur->doc) {
	FUNC6(elem, cur->doc);
    }
    elem->parent = cur->parent;
    elem->prev = cur;
    elem->next = cur->next;
    cur->next = elem;
    if (elem->next != NULL)
	elem->next->prev = elem;
    if ((elem->parent != NULL) && (elem->parent->last == cur))
	elem->parent->last = elem;
    return(elem);
}