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
struct vlc_wl_registry {int /*<<< orphan*/  interfaces; int /*<<< orphan*/  names; int /*<<< orphan*/  registry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_wl_registry*) ; 
 int /*<<< orphan*/  interface_destroy ; 
 int /*<<< orphan*/  name_destroy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct vlc_wl_registry *vr)
{
    FUNC2(vr->registry);
    FUNC1(vr->names, name_destroy);
    FUNC1(vr->interfaces, interface_destroy);
    FUNC0(vr);
}