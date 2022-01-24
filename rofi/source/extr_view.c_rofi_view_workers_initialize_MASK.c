#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int threads; } ;
struct TYPE_6__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (long,long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 TYPE_5__ config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rofi_view_call_thread ; 
 long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpool ; 

void FUNC9 ( void )
{
    FUNC1 ( "Setup Threadpool, start" );
    if ( config.threads == 0 ) {
        config.threads = 1;
        long procs = FUNC8 ( _SC_NPROCESSORS_CONF );
        if ( procs > 0 ) {
            config.threads = FUNC0 ( procs, 128l );
        }
    }
    // Create thread pool
    GError *error = NULL;
    tpool = FUNC4 ( rofi_view_call_thread, NULL, config.threads, FALSE, &error );
    if ( error == NULL ) {
        // Idle threads should stick around for a max of 60 seconds.
        FUNC5 ( 60000 );
        // We are allowed to have
        FUNC6 ( tpool, config.threads, &error );
    }
    // If error occurred during setup of pool, tell user and exit.
    if ( error != NULL ) {
        FUNC7 ( "Failed to setup thread pool: '%s'", error->message );
        FUNC3 ( error );
        FUNC2 ( EXIT_FAILURE );
    }
    FUNC1 ( "Setup Threadpool, done" );
}