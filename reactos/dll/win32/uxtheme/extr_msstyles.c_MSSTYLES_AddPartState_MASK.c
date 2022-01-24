#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* partstate; } ;
struct TYPE_8__ {int iPartId; int iStateId; struct TYPE_8__* next; int /*<<< orphan*/ * properties; } ;
typedef  int /*<<< orphan*/  THEME_PARTSTATE ;
typedef  TYPE_1__* PTHEME_PARTSTATE ;
typedef  TYPE_2__* PTHEME_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PTHEME_PARTSTATE FUNC3(PTHEME_CLASS tc, int iPartId, int iStateId)
{
    PTHEME_PARTSTATE cur = FUNC2(tc, iPartId, iStateId, NULL);
    if(cur) return cur;

    cur = FUNC1(FUNC0(), 0, sizeof(THEME_PARTSTATE));
    cur->iPartId = iPartId;
    cur->iStateId = iStateId;
    cur->properties = NULL;
    cur->next = tc->partstate;
    tc->partstate = cur;
    return cur;
}