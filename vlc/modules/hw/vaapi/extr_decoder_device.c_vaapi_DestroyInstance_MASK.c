#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vaapi_instance {int /*<<< orphan*/ * native; int /*<<< orphan*/  (* native_destroy_cb ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  dpy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vaapi_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vaapi_instance *inst)
{
    FUNC2(inst->dpy);
    if (inst->native != NULL && inst->native_destroy_cb != NULL)
        inst->native_destroy_cb(inst->native);
    FUNC0(inst);
}