#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  plugin_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  combi_mode ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  drun_mode ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help_keys_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  run_mode ; 
 int /*<<< orphan*/  ssh_mode ; 
 int /*<<< orphan*/  window_mode ; 
 int /*<<< orphan*/  window_mode_cd ; 

__attribute__((used)) static void FUNC5 ( void )
{
#ifdef WINDOW_MODE
    rofi_collect_modi_add ( &window_mode );
    rofi_collect_modi_add ( &window_mode_cd );
#endif
    FUNC3 ( &run_mode );
    FUNC3 ( &ssh_mode );
#ifdef ENABLE_DRUN
    rofi_collect_modi_add ( &drun_mode );
#endif
    FUNC3 ( &combi_mode );
    FUNC3 ( &help_keys_mode );

    if ( FUNC0 ( "-no-plugins" ) < 0 ) {
        FUNC1 ( "-plugin-path", &( config.plugin_path ) );
        FUNC2 ( "Parse plugin path: %s", config.plugin_path );
        FUNC4 ( config.plugin_path );
    }
}