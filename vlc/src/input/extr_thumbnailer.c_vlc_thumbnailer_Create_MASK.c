#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * worker; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ vlc_thumbnailer_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct background_worker_config {int default_timeout; int max_threads; int /*<<< orphan*/  pf_stop; int /*<<< orphan*/  pf_probe; int /*<<< orphan*/  pf_start; int /*<<< orphan*/  pf_hold; int /*<<< orphan*/  pf_release; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,struct background_worker_config*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  thumbnailer_request_Hold ; 
 int /*<<< orphan*/  thumbnailer_request_Probe ; 
 int /*<<< orphan*/  thumbnailer_request_Release ; 
 int /*<<< orphan*/  thumbnailer_request_Start ; 
 int /*<<< orphan*/  thumbnailer_request_Stop ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

vlc_thumbnailer_t *FUNC4( vlc_object_t* parent)
{
    vlc_thumbnailer_t *thumbnailer = FUNC2( sizeof( *thumbnailer ) );
    if ( FUNC3( thumbnailer == NULL ) )
        return NULL;
    thumbnailer->parent = parent;
    struct background_worker_config cfg = {
        .default_timeout = -1,
        .max_threads = 1,
        .pf_release = thumbnailer_request_Release,
        .pf_hold = thumbnailer_request_Hold,
        .pf_start = thumbnailer_request_Start,
        .pf_probe = thumbnailer_request_Probe,
        .pf_stop = thumbnailer_request_Stop,
    };
    thumbnailer->worker = FUNC0( thumbnailer, &cfg );
    if ( FUNC3( thumbnailer->worker == NULL ) )
    {
        FUNC1( thumbnailer );
        return NULL;
    }
    return thumbnailer;
}