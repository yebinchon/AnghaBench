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
struct fetcher_thread {int /*<<< orphan*/  worker; int /*<<< orphan*/  active; int /*<<< orphan*/  req; int /*<<< orphan*/  fetcher; int /*<<< orphan*/  (* pf_worker ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  interrupt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void* FUNC4( void* handle )
{
    struct fetcher_thread* th = handle;
    FUNC3( &th->interrupt );

    th->pf_worker( th->fetcher, th->req );

    FUNC0( &th->active, false );
    FUNC1( th->worker );
    return NULL;
}