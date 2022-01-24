#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  worker; } ;
typedef  TYPE_1__ vlc_thumbnailer_t ;
struct TYPE_13__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  input_item; } ;
struct TYPE_12__ {int done; int /*<<< orphan*/  lock; TYPE_3__ params; int /*<<< orphan*/ * input_thread; TYPE_1__* thumbnailer; } ;
typedef  TYPE_2__ vlc_thumbnailer_request_t ;
typedef  TYPE_3__ vlc_thumbnailer_params_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlc_thumbnailer_request_t*
FUNC7( vlc_thumbnailer_t* thumbnailer,
                           const vlc_thumbnailer_params_t* params )
{
    vlc_thumbnailer_request_t *request = FUNC3( sizeof( *request ) );
    if ( FUNC5( request == NULL ) )
        return NULL;
    request->thumbnailer = thumbnailer;
    request->input_thread = NULL;
    request->params = *(vlc_thumbnailer_params_t*)params;
    request->done = false;
    FUNC2( request->params.input_item );
    FUNC6( &request->lock );

    int timeout = params->timeout == VLC_TICK_INVALID ?
                0 : FUNC0( params->timeout );
    if ( FUNC1( thumbnailer->worker, request, request,
                                  timeout ) != VLC_SUCCESS )
    {
        FUNC4( request );
        return NULL;
    }
    return request;
}