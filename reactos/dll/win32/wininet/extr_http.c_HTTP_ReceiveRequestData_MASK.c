#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ hInternet; } ;
struct TYPE_13__ {scalar_t__ read_size; TYPE_3__ hdr; TYPE_2__* session; int /*<<< orphan*/  read_section; } ;
typedef  TYPE_4__ http_request_t ;
struct TYPE_10__ {int dwInternalFlags; } ;
struct TYPE_11__ {TYPE_1__ hdr; } ;
typedef  int DWORD_PTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int INET_OPENURL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(http_request_t *req)
{
    DWORD res, read = 0;

    FUNC2("%p\n", req);

    FUNC0( &req->read_section );

    res = FUNC5(req, FALSE, &read);
    if(res == ERROR_SUCCESS)
        read += req->read_size;

    FUNC1( &req->read_section );

    if(res != WSAEWOULDBLOCK && (res != ERROR_SUCCESS || !read)) {
        FUNC3("res %u read %u, closing connection\n", res, read);
        FUNC4(req, FALSE);
    }

    if(res != ERROR_SUCCESS && res != WSAEWOULDBLOCK) {
        FUNC6(req, 0, res);
        return;
    }

    FUNC6(req, req->session->hdr.dwInternalFlags & INET_OPENURL ? (DWORD_PTR)req->hdr.hInternet : 1, 0);
}