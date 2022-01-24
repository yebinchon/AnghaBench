#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t nCustHeaders; TYPE_2__* custHeaders; } ;
typedef  TYPE_1__ http_request_t ;
struct TYPE_7__ {int /*<<< orphan*/  lpszValue; int /*<<< orphan*/  lpszField; } ;
typedef  int /*<<< orphan*/  HTTPHEADERW ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC3(http_request_t *request, DWORD index)
{
    if( request->nCustHeaders <= 0 )
        return FALSE;
    if( index >= request->nCustHeaders )
        return FALSE;
    request->nCustHeaders--;

    FUNC0(request->custHeaders[index].lpszField);
    FUNC0(request->custHeaders[index].lpszValue);

    FUNC1( &request->custHeaders[index], &request->custHeaders[index+1],
             (request->nCustHeaders - index)* sizeof(HTTPHEADERW) );
    FUNC2( &request->custHeaders[request->nCustHeaders], 0, sizeof(HTTPHEADERW) );

    return TRUE;
}