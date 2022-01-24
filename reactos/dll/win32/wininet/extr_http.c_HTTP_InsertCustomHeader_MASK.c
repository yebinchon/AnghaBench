#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nCustHeaders; TYPE_2__* custHeaders; } ;
typedef  TYPE_1__ http_request_t ;
struct TYPE_9__ {int /*<<< orphan*/  wCount; int /*<<< orphan*/  wFlags; void* lpszValue; void* lpszField; } ;
typedef  TYPE_2__* LPHTTPHEADERW ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HTTPHEADERW ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int) ; 
 void* FUNC4 (void*) ; 

__attribute__((used)) static DWORD FUNC5(http_request_t *request, LPHTTPHEADERW lpHdr)
{
    INT count;
    LPHTTPHEADERW lph = NULL;

    FUNC0("--> %s: %s\n", FUNC1(lpHdr->lpszField), FUNC1(lpHdr->lpszValue));
    count = request->nCustHeaders + 1;
    if (count > 1)
	lph = FUNC3(request->custHeaders, sizeof(HTTPHEADERW) * count);
    else
	lph = FUNC2(sizeof(HTTPHEADERW) * count);

    if (!lph)
        return ERROR_OUTOFMEMORY;

    request->custHeaders = lph;
    request->custHeaders[count-1].lpszField = FUNC4(lpHdr->lpszField);
    request->custHeaders[count-1].lpszValue = FUNC4(lpHdr->lpszValue);
    request->custHeaders[count-1].wFlags = lpHdr->wFlags;
    request->custHeaders[count-1].wCount= lpHdr->wCount;
    request->nCustHeaders++;

    return ERROR_SUCCESS;
}