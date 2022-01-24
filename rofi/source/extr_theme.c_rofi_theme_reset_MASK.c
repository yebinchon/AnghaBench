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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ThemeWidget ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* rofi_theme ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 ( void )
{
    FUNC2 ( rofi_theme );
    rofi_theme       = FUNC0 ( ThemeWidget );
    rofi_theme->name = FUNC1 ( "Root" );
    // Hack to fix backwards compatibility.
    FUNC3 ( );
}