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
typedef  TYPE_1__* xmlListPtr ;
typedef  int /*<<< orphan*/ * xmlListDeallocator ;
typedef  int /*<<< orphan*/ * xmlListDataCompare ;
typedef  int /*<<< orphan*/  xmlList ;
typedef  TYPE_2__* xmlLinkPtr ;
typedef  int /*<<< orphan*/  xmlLink ;
struct TYPE_7__ {int /*<<< orphan*/ * data; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
struct TYPE_6__ {int /*<<< orphan*/ * linkCompare; int /*<<< orphan*/ * linkDeallocator; TYPE_2__* sentinel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/ * xmlLinkCompare ; 
 scalar_t__ FUNC3 (int) ; 

xmlListPtr
FUNC4(xmlListDeallocator deallocator, xmlListDataCompare compare)
{
    xmlListPtr l;
    if (NULL == (l = (xmlListPtr )FUNC3( sizeof(xmlList)))) {
        FUNC2(xmlGenericErrorContext,
		        "Cannot initialize memory for list");
        return (NULL);
    }
    /* Initialize the list to NULL */
    FUNC0(l, 0, sizeof(xmlList));

    /* Add the sentinel */
    if (NULL ==(l->sentinel = (xmlLinkPtr )FUNC3(sizeof(xmlLink)))) {
        FUNC2(xmlGenericErrorContext,
		        "Cannot initialize memory for sentinel");
	FUNC1(l);
        return (NULL);
    }
    l->sentinel->next = l->sentinel;
    l->sentinel->prev = l->sentinel;
    l->sentinel->data = NULL;

    /* If there is a link deallocator, use it */
    if (deallocator != NULL)
        l->linkDeallocator = deallocator;
    /* If there is a link comparator, use it */
    if (compare != NULL)
        l->linkCompare = compare;
    else /* Use our own */
        l->linkCompare = xmlLinkCompare;
    return l;
}