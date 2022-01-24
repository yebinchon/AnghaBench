#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct background_worker_config {int /*<<< orphan*/  pf_hold; int /*<<< orphan*/  pf_release; int /*<<< orphan*/  pf_stop; int /*<<< orphan*/  pf_probe; int /*<<< orphan*/  pf_start; int /*<<< orphan*/  max_threads; int /*<<< orphan*/  default_timeout; } ;
struct TYPE_7__ {int /*<<< orphan*/  fetcher; int /*<<< orphan*/  deactivated; int /*<<< orphan*/ * owner; int /*<<< orphan*/  worker; } ;
typedef  TYPE_1__ input_preparser_t ;

/* Variables and functions */
 int /*<<< orphan*/  PreparserCloseInput ; 
 int /*<<< orphan*/  PreparserOpenInput ; 
 int /*<<< orphan*/  PreparserProbeInput ; 
 int /*<<< orphan*/  ReqHoldVoid ; 
 int /*<<< orphan*/  ReqReleaseVoid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct background_worker_config*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

input_preparser_t* FUNC10( vlc_object_t *parent )
{
    input_preparser_t* preparser = FUNC6( sizeof *preparser );

    struct background_worker_config conf = {
        .default_timeout = FUNC0(FUNC9( parent, "preparse-timeout" )),
        .max_threads = FUNC9( parent, "preparse-threads" ),
        .pf_start = PreparserOpenInput,
        .pf_probe = PreparserProbeInput,
        .pf_stop = PreparserCloseInput,
        .pf_release = ReqReleaseVoid,
        .pf_hold = ReqHoldVoid
    };


    if( FUNC5( preparser ) )
        preparser->worker = FUNC2( preparser, &conf );

    if( FUNC8( !preparser || !preparser->worker ) )
    {
        FUNC3( preparser );
        return NULL;
    }

    preparser->owner = parent;
    preparser->fetcher = FUNC4( parent );
    FUNC1( &preparser->deactivated, false );

    if( FUNC8( !preparser->fetcher ) )
        FUNC7( parent, "unable to create art fetcher" );

    return preparser;
}