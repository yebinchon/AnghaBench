#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_9__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_8__ {int timedout; TYPE_1__* read; } ;
struct TYPE_7__ {scalar_t__ timedout; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(ngx_http_request_t *r)
{
    ngx_int_t  rc;

    if (r->connection->read->timedout) {
        r->connection->timedout = 1;
        FUNC1(r, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    rc = FUNC0(r);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        FUNC1(r, rc);
    }
}