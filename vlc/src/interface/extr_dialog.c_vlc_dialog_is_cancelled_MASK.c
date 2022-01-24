#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int b_cancelled; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_dialog_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(vlc_object_t *p_obj, vlc_dialog_id *p_id)
{
    (void) p_obj;
    FUNC0(p_id != NULL);

    FUNC1(&p_id->lock);
    bool b_cancelled = p_id->b_cancelled;
    FUNC2(&p_id->lock);
    return b_cancelled;
}