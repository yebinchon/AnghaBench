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
struct TYPE_4__ {int b_error; int b_ready; int /*<<< orphan*/  obj; int /*<<< orphan*/  b_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
typedef  TYPE_1__ event_thread_t ;
typedef  int /*<<< orphan*/  MSG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 

__attribute__((used)) static void *FUNC12( void *p_this )
{
    event_thread_t *p_event = (event_thread_t *)p_this;
    MSG msg;
    int canc = FUNC11 ();


    FUNC8( &p_event->lock );
    /* Create a window for the video */
    /* Creating a window under Windows also initializes the thread's event
     * message queue */
    if( FUNC4( p_event ) )
        p_event->b_error = true;

    p_event->b_ready = true;
    FUNC7( &p_event->wait );

    const bool b_error = p_event->b_error;
    FUNC9( &p_event->lock );

    if( b_error )
    {
        FUNC10( canc );
        return NULL;
    }

    /* Main loop */
    /* GetMessage will sleep if there's no message in the queue */
    for( ;; )
    {
        if( !FUNC1( &msg, 0, 0, 0 ) || FUNC5( &p_event->b_done ) )
        {
            break;
        }

        /* Messages we don't handle directly are dispatched to the
         * window procedure */
        FUNC2(&msg);
        FUNC0(&msg);

    } /* End Main loop */

    FUNC6( p_event->obj, "Win32 Vout EventThread terminating" );

    FUNC3( p_event );
    FUNC10(canc);
    return NULL;
}