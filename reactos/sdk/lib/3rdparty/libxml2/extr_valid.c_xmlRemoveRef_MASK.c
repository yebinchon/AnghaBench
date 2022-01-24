#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* ap; int /*<<< orphan*/ * l; } ;
typedef  TYPE_1__ xmlRemoveMemo ;
typedef  int /*<<< orphan*/ * xmlRefTablePtr ;
typedef  int /*<<< orphan*/ * xmlListPtr ;
typedef  TYPE_2__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_3__* xmlAttrPtr ;
struct TYPE_10__ {int /*<<< orphan*/  children; } ;
struct TYPE_9__ {scalar_t__ refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xmlFreeRefTableEntry ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xmlWalkRemoveRef ; 

int
FUNC6(xmlDocPtr doc, xmlAttrPtr attr) {
    xmlListPtr ref_list;
    xmlRefTablePtr table;
    xmlChar *ID;
    xmlRemoveMemo target;

    if (doc == NULL) return(-1);
    if (attr == NULL) return(-1);

    table = (xmlRefTablePtr) doc->refs;
    if (table == NULL)
        return(-1);

    ID = FUNC5(doc, attr->children, 1);
    if (ID == NULL)
        return(-1);

    ref_list = FUNC1(table, ID);
    if(ref_list == NULL) {
        FUNC0(ID);
        return (-1);
    }

    /* At this point, ref_list refers to a list of references which
     * have the same key as the supplied attr. Our list of references
     * is ordered by reference address and we don't have that information
     * here to use when removing. We'll have to walk the list and
     * check for a matching attribute, when we find one stop the walk
     * and remove the entry.
     * The list is ordered by reference, so that means we don't have the
     * key. Passing the list and the reference to the walker means we
     * will have enough data to be able to remove the entry.
     */
    target.l = ref_list;
    target.ap = attr;

    /* Remove the supplied attr from our list */
    FUNC4(ref_list, xmlWalkRemoveRef, &target);

    /*If the list is empty then remove the list entry in the hash */
    if (FUNC3(ref_list))
        FUNC2(table, ID, NULL, xmlFreeRefTableEntry);
    FUNC0(ID);
    return(0);
}