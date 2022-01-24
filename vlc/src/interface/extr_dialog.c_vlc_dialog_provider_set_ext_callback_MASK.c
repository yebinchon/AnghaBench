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
struct TYPE_3__ {int /*<<< orphan*/  lock; void* p_ext_data; int /*<<< orphan*/  pf_ext_update; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_ext_update_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(vlc_object_t *p_obj,
                                     vlc_dialog_ext_update_cb pf_update,
                                     void *p_data)
{
    FUNC0(p_obj != NULL);
    vlc_dialog_provider *p_provider = FUNC1(p_obj, false);

    FUNC2(&p_provider->lock);

    p_provider->pf_ext_update = pf_update;
    p_provider->p_ext_data = p_data;

    FUNC3(&p_provider->lock);
}