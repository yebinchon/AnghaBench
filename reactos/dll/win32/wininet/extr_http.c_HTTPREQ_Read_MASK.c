#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ read_size; scalar_t__ read_buf; scalar_t__ read_pos; int /*<<< orphan*/  read_section; } ;
typedef  TYPE_1__ http_request_t ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC8(http_request_t *req, void *buffer, DWORD size, DWORD *read, BOOL allow_blocking)
{
    DWORD current_read = 0, ret_read = 0;
    DWORD res = ERROR_SUCCESS;

    FUNC0( &req->read_section );

    if(req->read_size) {
        ret_read = FUNC6(size, req->read_size);
        FUNC5(buffer, req->read_buf+req->read_pos, ret_read);
        req->read_size -= ret_read;
        req->read_pos += ret_read;
        allow_blocking = FALSE;
    }

    if(ret_read < size) {
        res = FUNC7(req, (BYTE*)buffer+ret_read, size-ret_read, &current_read, allow_blocking);
        if(res == ERROR_SUCCESS)
            ret_read += current_read;
        else if(res == WSAEWOULDBLOCK && ret_read)
            res = ERROR_SUCCESS;
    }

    FUNC1( &req->read_section );

    *read = ret_read;
    FUNC2( "retrieved %u bytes (res %u)\n", ret_read, res );

    if(res != WSAEWOULDBLOCK) {
        if(res != ERROR_SUCCESS)
            FUNC4(req, FALSE);
        else if(!ret_read && FUNC3(req, FALSE) == ERROR_SUCCESS)
            FUNC4(req, TRUE);
    }

    return res;
}