#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fetcher_thread {void (* pf_worker ) (int /*<<< orphan*/ *,struct fetcher_request*) ;int /*<<< orphan*/  interrupt; int /*<<< orphan*/  thread; int /*<<< orphan*/  active; int /*<<< orphan*/ * fetcher; struct background_worker* worker; struct fetcher_request* req; } ;
struct fetcher_request {int dummy; } ;
struct background_worker {int dummy; } ;
typedef  int /*<<< orphan*/  input_fetcher_t ;

/* Variables and functions */
 int /*<<< orphan*/  FetcherThread ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fetcher_thread*) ; 
 struct fetcher_thread* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fetcher_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( input_fetcher_t* fetcher,
    void( *pf_worker )( input_fetcher_t*, struct fetcher_request* ),
    struct background_worker* bg, struct fetcher_request* req, void** handle )
{
    struct fetcher_thread* th = FUNC2( sizeof *th );

    if( FUNC3( !th ) )
        return VLC_ENOMEM;

    th->req = req;
    th->worker = bg;
    th->fetcher = fetcher;
    th->pf_worker = pf_worker;

    FUNC6( &th->interrupt );
    FUNC0( &th->active, true );

    if( !FUNC4( &th->thread, FetcherThread, th, VLC_THREAD_PRIORITY_LOW ) )
    {
        *handle = th;
        return VLC_SUCCESS;
    }

    FUNC5( &th->interrupt );
    FUNC1( th );
    return VLC_EGENERIC;
}