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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  ThemeWidget ;

/* Variables and functions */
 int /*<<< orphan*/  rofi_theme ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 

ThemeWidget *FUNC2 ( const char *name, const char *state, gboolean exact )
{
    // First find exact match based on name.
    ThemeWidget *widget = FUNC1 ( rofi_theme, name );
    widget = FUNC0 ( widget, state, exact );

    return widget;
}