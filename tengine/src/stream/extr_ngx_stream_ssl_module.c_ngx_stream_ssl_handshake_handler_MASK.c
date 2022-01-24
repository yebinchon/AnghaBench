#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_stream_session_t ;
struct TYPE_6__ {TYPE_4__* read; TYPE_1__* ssl; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_7__ {scalar_t__ timer_set; } ;
struct TYPE_5__ {int /*<<< orphan*/  handshaked; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_STREAM_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ngx_connection_t *c)
{
    ngx_stream_session_t  *s;

    s = c->data;

    if (!c->ssl->handshaked) {
        FUNC2(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    if (c->read->timer_set) {
        FUNC0(c->read);
    }

    FUNC1(s);
}