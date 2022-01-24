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
struct TYPE_5__ {scalar_t__ focus_item; int style; scalar_t__ nb_items; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ LB_DESCR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LBS_NOSEL ; 
 int /*<<< orphan*/  LB_ERR ; 
 int /*<<< orphan*/  LB_OKAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC3( LB_DESCR *descr, INT index, BOOL fully_visible )
{
    INT oldfocus = descr->focus_item;

    FUNC2("old focus %d, index %d\n", oldfocus, index);

    if (descr->style & LBS_NOSEL) return LB_ERR;
    if ((index < 0) || (index >= descr->nb_items)) return LB_ERR;
    if (index == oldfocus) return LB_OKAY;

    FUNC0( descr, FALSE );
    descr->focus_item = index;

    FUNC1( descr, index, fully_visible );
    FUNC0( descr, TRUE );

    return LB_OKAY;
}