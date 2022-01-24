#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* upstream; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
typedef  int /*<<< orphan*/  ngx_multi_connection_t ;
typedef  int /*<<< orphan*/  ngx_connection_t ;
struct TYPE_5__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_6__ {TYPE_1__ peer; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 

ngx_multi_connection_t*
FUNC1(ngx_stream_session_t *s)
{
    ngx_connection_t        *pc;

    pc = s->upstream->peer.connection;

    return FUNC0(pc);
}