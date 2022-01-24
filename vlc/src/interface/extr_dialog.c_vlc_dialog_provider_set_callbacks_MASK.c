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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_cbs_data; int /*<<< orphan*/  cbs; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_cbs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(vlc_object_t *p_obj,
                                  const vlc_dialog_cbs *p_cbs, void *p_data)
{
    FUNC0(p_obj != NULL);
    vlc_dialog_provider *p_provider = FUNC2(p_obj, false);

    FUNC4(&p_provider->lock);
    FUNC1(p_provider);

    if (p_cbs == NULL)
    {
        FUNC3(&p_provider->cbs, 0, sizeof(p_provider->cbs));
        p_provider->p_cbs_data = NULL;
    }
    else
    {
        p_provider->cbs = *p_cbs;
        p_provider->p_cbs_data = p_data;
    }
    FUNC5(&p_provider->lock);
}