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
struct fetcher_request {int /*<<< orphan*/  item; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fetcher_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( void* req_ )
{
    struct fetcher_request* req = req_;

    if( !FUNC2( &req->rc ) )
        return;

    FUNC1( req->item );
    FUNC0( req );
}