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
struct TYPE_7__ {TYPE_1__* req_file; int /*<<< orphan*/  last_modified; int /*<<< orphan*/  expires; int /*<<< orphan*/ * hCacheFile; } ;
typedef  TYPE_2__ http_request_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  is_committed; int /*<<< orphan*/  file_name; int /*<<< orphan*/  url; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  NORMAL_CACHE_ENTRY ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(http_request_t *req)
{
    WCHAR *header;
    DWORD header_len;
    BOOL res;

    FUNC3("%p\n", req);

    FUNC0(req->hCacheFile);
    req->hCacheFile = NULL;

    header = FUNC5(req, TRUE);
    header_len = (header ? FUNC7(header) : 0);
    res = FUNC1(req->req_file->url, req->req_file->file_name, req->expires,
             req->last_modified, NORMAL_CACHE_ENTRY,
            header, header_len, NULL, 0);
    if(res)
        req->req_file->is_committed = TRUE;
    else
        FUNC4("CommitUrlCacheEntry failed: %u\n", FUNC2());
    FUNC6(header);
}