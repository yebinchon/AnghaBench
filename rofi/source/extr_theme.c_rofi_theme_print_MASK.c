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
typedef  int /*<<< orphan*/  ThemeWidget ;

/* Variables and functions */
 char* PACKAGE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 ( ThemeWidget *widget )
{
    if ( widget != NULL ) {
        FUNC0 ( "/**\n * rofi -dump-theme output.\n * Rofi version: %s\n **/\n", PACKAGE_VERSION );
        FUNC1 ( widget );
    }
}