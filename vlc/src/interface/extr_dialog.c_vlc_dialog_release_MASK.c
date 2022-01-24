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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(vlc_object_t *p_obj, vlc_dialog_id *p_id)
{
    FUNC0(p_obj != NULL && p_id != NULL);
    vlc_dialog_provider *p_provider = FUNC3(p_obj, false);

    FUNC4(&p_provider->lock);
    FUNC1(p_provider, p_id);
    FUNC2(p_provider, p_id);
    FUNC5(&p_provider->lock);
}