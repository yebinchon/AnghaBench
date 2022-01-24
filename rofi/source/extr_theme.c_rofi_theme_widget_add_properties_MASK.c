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
struct TYPE_3__ {int /*<<< orphan*/ * properties; } ;
typedef  TYPE_1__ ThemeWidget ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  int /*<<< orphan*/  GDestroyNotify ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  rofi_theme_copy_property_int ; 
 scalar_t__ rofi_theme_property_free ; 

void FUNC2 ( ThemeWidget *widget, GHashTable *table )
{
    if ( table == NULL ) {
        return;
    }
    if ( widget->properties == NULL ) {
        widget->properties = FUNC1 ( g_str_hash, g_str_equal, NULL, (GDestroyNotify) rofi_theme_property_free );
    }
    FUNC0 ( table, rofi_theme_copy_property_int, widget->properties );
}