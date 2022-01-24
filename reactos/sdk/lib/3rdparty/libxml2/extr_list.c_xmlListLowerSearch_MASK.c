#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlListPtr ;
typedef  TYPE_2__* xmlLinkPtr ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {scalar_t__ (* linkCompare ) (int /*<<< orphan*/ ,void*) ;TYPE_2__* sentinel; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static xmlLinkPtr
FUNC1(xmlListPtr l, void *data)
{
    xmlLinkPtr lk;

    if (l == NULL)
        return(NULL);
    for(lk = l->sentinel->next;lk != l->sentinel && l->linkCompare(lk->data, data) <0 ;lk = lk->next);
    return lk;
}