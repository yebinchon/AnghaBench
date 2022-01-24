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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  album_cache; int /*<<< orphan*/  lock; scalar_t__ downloader; scalar_t__ network; scalar_t__ local; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_1__ input_fetcher_t ;

/* Variables and functions */
 int /*<<< orphan*/  StartDownloader ; 
 int /*<<< orphan*/  StartSearchLocal ; 
 int /*<<< orphan*/  StartSearchNetwork ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

input_fetcher_t* FUNC7( vlc_object_t* owner )
{
    input_fetcher_t* fetcher = FUNC3( sizeof( *fetcher ) );

    if( FUNC4( !fetcher ) )
        return NULL;

    fetcher->owner = owner;

    FUNC0( fetcher, &fetcher->local, StartSearchLocal );
    FUNC0( fetcher, &fetcher->network, StartSearchNetwork );
    FUNC0( fetcher, &fetcher->downloader, StartDownloader );

    if( FUNC4( !fetcher->local || !fetcher->network || !fetcher->downloader ) )
    {
        if( fetcher->local )
            FUNC1( fetcher->local );

        if( fetcher->network )
            FUNC1( fetcher->network );

        if( fetcher->downloader )
            FUNC1( fetcher->downloader );

        FUNC2( fetcher );
        return NULL;
    }

    FUNC6( &fetcher->lock );
    FUNC5( &fetcher->album_cache, 0 );

    return fetcher;
}