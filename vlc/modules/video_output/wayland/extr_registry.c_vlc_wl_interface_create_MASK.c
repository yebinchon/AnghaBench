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
struct vlc_wl_interface {int /*<<< orphan*/  globals; int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct vlc_wl_interface* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t const) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vlc_wl_interface *FUNC5(const char *iface)
{
    const size_t len = FUNC3(iface) + 1;
    struct vlc_wl_interface *vi = FUNC1(sizeof (*vi) + len);

    if (FUNC0(vi != NULL))
    {
        FUNC2(vi->interface, iface, len);
        FUNC4(&vi->globals);
    }
    return vi;
}