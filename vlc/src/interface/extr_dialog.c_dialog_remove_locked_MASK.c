#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dialog_array; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
struct TYPE_8__ {scalar_t__ i_refcount; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ vlc_dialog_id ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(vlc_dialog_provider *p_provider, vlc_dialog_id *p_id)
{
    ssize_t i_idx = FUNC2(&p_provider->dialog_array, p_id);
    FUNC0(i_idx >= 0);
    FUNC3(&p_provider->dialog_array, i_idx);

    FUNC4(&p_id->lock);
    p_id->i_refcount--;
    if (p_id->i_refcount == 0)
    {
        FUNC5(&p_id->lock);
        FUNC1(p_id);
    }
    else
        FUNC5(&p_id->lock);
}