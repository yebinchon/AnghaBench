#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dialog_answer {int dummy; } ;
struct TYPE_4__ {int b_cancelled; int b_answered; scalar_t__ i_refcount; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; struct dialog_answer answer; } ;
typedef  TYPE_1__ vlc_dialog_id ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(vlc_dialog_id *p_id, struct dialog_answer *p_answer)
{
    FUNC2(&p_id->lock);
    if (p_answer == NULL)
    {
        p_id->b_cancelled = true;
    }
    else
    {
        p_id->answer = *p_answer;
        p_id->b_answered = true;
    }
    p_id->i_refcount--;
    if (p_id->i_refcount > 0)
    {
        FUNC1(&p_id->wait);
        FUNC3(&p_id->lock);
    }
    else
    {
        FUNC3(&p_id->lock);
        FUNC0(p_id);
    }
    return VLC_SUCCESS;
}