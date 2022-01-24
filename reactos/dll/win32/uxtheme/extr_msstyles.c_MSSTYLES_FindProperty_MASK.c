#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * PTHEME_PROPERTY ;
typedef  int /*<<< orphan*/  PTHEME_PARTSTATE ;
typedef  scalar_t__ PTHEME_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int,int,int) ; 

PTHEME_PROPERTY FUNC3(PTHEME_CLASS tc, int iPartId, int iStateId, int iPropertyPrimitive, int iPropertyId)
{
    PTHEME_CLASS next = tc;
    PTHEME_PARTSTATE ps;
    PTHEME_PROPERTY tp;

    FUNC2("(%p, %d, %d, %d)\n", tc, iPartId, iStateId, iPropertyId);
     /* Try and find an exact match on part & state */
    while(next && (ps = FUNC0(next, iPartId, iStateId, &next))) {
        if((tp = FUNC1(ps, iPropertyPrimitive, iPropertyId))) {
            return tp;
        }
    }
    /* If that fails, and we didn't already try it, search for just part */
    if(iStateId != 0)
        iStateId = 0;
    /* As a last ditch attempt..go for just class */
    else if(iPartId != 0)
        iPartId = 0;
    else
        return NULL;

    if((tp = FUNC3(tc, iPartId, iStateId, iPropertyPrimitive, iPropertyId)))
        return tp;
    return NULL;
}