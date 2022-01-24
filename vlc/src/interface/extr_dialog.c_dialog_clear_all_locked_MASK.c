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
struct TYPE_4__ {int /*<<< orphan*/  dialog_array; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC3(vlc_dialog_provider *p_provider)
{
    for (size_t i = 0; i < FUNC1(&p_provider->dialog_array); ++i)
    {
        vlc_dialog_id *p_id =
            FUNC2(&p_provider->dialog_array, i);
        FUNC0(p_provider, p_id);
    }
}