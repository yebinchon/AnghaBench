#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* pf_cancel ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  p_cbs_data; TYPE_1__ cbs; } ;
typedef  TYPE_2__ vlc_dialog_provider ;
struct TYPE_9__ {int b_cancelled; int /*<<< orphan*/  lock; scalar_t__ b_answered; } ;
typedef  TYPE_3__ vlc_dialog_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(vlc_dialog_provider *p_provider, vlc_dialog_id *p_id)
{
    FUNC1(&p_id->lock);
    if (p_id->b_cancelled || p_id->b_answered)
    {
        FUNC2(&p_id->lock);
        return;
    }
    p_id->b_cancelled = true;
    FUNC2(&p_id->lock);

    p_provider->cbs.pf_cancel(p_provider->p_cbs_data, p_id);
}