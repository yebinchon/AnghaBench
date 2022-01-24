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
struct fetcher_request {int options; int /*<<< orphan*/  item; } ;
struct TYPE_4__ {int /*<<< orphan*/  network; int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ input_fetcher_t ;

/* Variables and functions */
 int /*<<< orphan*/  FETCHER_SCOPE_LOCAL ; 
 int META_REQUEST_OPTION_FETCH_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (struct fetcher_request*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct fetcher_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct fetcher_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5( input_fetcher_t* fetcher, struct fetcher_request* req )
{
    if( FUNC1( fetcher, req, FETCHER_SCOPE_LOCAL ) == VLC_SUCCESS )
        return; /* done */

    if( FUNC4( fetcher->owner, "metadata-network-access" ) ||
        req->options & META_REQUEST_OPTION_FETCH_NETWORK )
    {
        if( FUNC2( fetcher->network, req, NULL, 0 ) )
            FUNC0(req, false);
    }
    else
    {
        FUNC3( req->item, true );
        FUNC0(req, false);
    }
}