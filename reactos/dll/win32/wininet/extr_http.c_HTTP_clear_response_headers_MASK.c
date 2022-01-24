#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t nCustHeaders; int /*<<< orphan*/  headers_section; TYPE_1__* custHeaders; } ;
typedef  TYPE_2__ http_request_t ;
struct TYPE_5__ {int wFlags; int /*<<< orphan*/  lpszValue; int /*<<< orphan*/  lpszField; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int HDR_ISREQUEST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( http_request_t *request )
{
    DWORD i;

    FUNC0( &request->headers_section );

    for( i=0; i<request->nCustHeaders; i++)
    {
        if( !request->custHeaders[i].lpszField )
            continue;
        if( !request->custHeaders[i].lpszValue )
            continue;
        if ( request->custHeaders[i].wFlags & HDR_ISREQUEST )
            continue;
        FUNC1( request, i );
        i--;
    }

    FUNC2( &request->headers_section );
}