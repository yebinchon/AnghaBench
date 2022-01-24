#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  read_section; TYPE_3__* data_stream; int /*<<< orphan*/  verb; int /*<<< orphan*/  netconn; } ;
typedef  TYPE_2__ http_request_t ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* drain_content ) (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_DATA ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szHEAD ; 

__attribute__((used)) static DWORD FUNC6(http_request_t *req, BOOL blocking)
{
    DWORD res;

    FUNC2("%p\n", req->netconn);

    if(!FUNC3(req->netconn))
        return ERROR_NO_DATA;

    if(!FUNC4(req->verb, szHEAD))
        return ERROR_SUCCESS;

    FUNC0( &req->read_section );
    res = req->data_stream->vtbl->drain_content(req->data_stream, req, blocking);
    FUNC1( &req->read_section );
    return res;
}