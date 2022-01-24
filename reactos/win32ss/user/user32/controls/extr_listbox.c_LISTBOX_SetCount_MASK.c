#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nb_items; int /*<<< orphan*/  self; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ LB_DESCR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SETCOUNT_ON_BAD_LB ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_ERR ; 
 int /*<<< orphan*/  LB_OKAY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC5( LB_DESCR *descr, INT count )
{
    LRESULT ret;

    if (FUNC0(descr))
    {
        FUNC4(ERROR_SETCOUNT_ON_BAD_LB);
        return LB_ERR;
    }

    /* FIXME: this is far from optimal... */
    if (count > descr->nb_items)
    {
        while (count > descr->nb_items)
            if ((ret = FUNC2( descr, -1, 0 )) < 0)
                return ret;
    }
    else if (count < descr->nb_items)
    {
        while (count < descr->nb_items)
            if ((ret = FUNC3( descr, (descr->nb_items - 1) )) < 0)
                return ret;
    }

    FUNC1( descr->self, NULL, TRUE );
    return LB_OKAY;
}