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
struct fetcher_request {int /*<<< orphan*/  item; } ;
typedef  int /*<<< orphan*/  input_fetcher_t ;

/* Variables and functions */
 int /*<<< orphan*/  FETCHER_SCOPE_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (struct fetcher_request*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct fetcher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3( input_fetcher_t* fetcher, struct fetcher_request* req )
{
    if( FUNC1( fetcher, req, FETCHER_SCOPE_NETWORK ) )
    {
        FUNC2( req->item, true );
        FUNC0(req, false);
    }
}