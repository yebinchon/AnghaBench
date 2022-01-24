#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  user_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * input_thread; int /*<<< orphan*/  lock; TYPE_1__ params; } ;
typedef  TYPE_2__ vlc_thumbnailer_request_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( void* owner, void* handle )
{
    FUNC0(owner);

    vlc_thumbnailer_request_t *request = handle;
    FUNC4( &request->lock );
    /*
     * If the callback hasn't been invoked yet, we assume a timeout and
     * signal it back to the user
     */
    if ( request->params.cb != NULL )
    {
        request->params.cb( request->params.user_data, NULL );
        request->params.cb = NULL;
    }
    FUNC5( &request->lock );
    FUNC1( request->input_thread != NULL );
    FUNC2( request->input_thread );
}