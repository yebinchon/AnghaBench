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
struct fetcher_request {int /*<<< orphan*/ * item; } ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_7__ {int /*<<< orphan*/  downloader; } ;
typedef  TYPE_1__ input_fetcher_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fetcher_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( input_fetcher_t* fetcher,
    struct fetcher_request* req, int scope )
{
    input_item_t* item = req->item;

    if( FUNC2( item ) &&
        FUNC3( fetcher, req->item, scope, "meta fetcher" ) )
    {
        return VLC_EGENERIC;
    }

    if( ! FUNC1( item )                         ||
        ! FUNC4( fetcher, item )          ||
        ! FUNC8( item ) ||
        ! FUNC7( item )             ||
        ! FUNC5( fetcher, item, scope ) )
    {
        FUNC0( fetcher, req->item, false );
        if( !FUNC6( fetcher->downloader, req, NULL, 0 ) )
            return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}