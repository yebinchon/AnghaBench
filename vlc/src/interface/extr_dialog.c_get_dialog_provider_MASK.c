#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ no_interact; } ;
typedef  TYPE_1__ vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_dialog_provider ;
struct TYPE_6__ {int /*<<< orphan*/ * p_dialog_provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static inline vlc_dialog_provider *
FUNC4(vlc_object_t *p_obj, bool b_check_interact)
{
    if ((b_check_interact && p_obj->no_interact) || FUNC2())
        return NULL;

    vlc_dialog_provider *p_provider =
        FUNC1(FUNC3(p_obj))->p_dialog_provider;
    FUNC0(p_provider != NULL);
    return p_provider;
}