#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_5__* connection; TYPE_2__* proxy; } ;
typedef  TYPE_3__ ngx_mail_session_t ;
struct TYPE_11__ {int /*<<< orphan*/  fd; } ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
struct TYPE_7__ {TYPE_6__* connection; } ;
struct TYPE_8__ {TYPE_1__ upstream; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC3(ngx_mail_session_t *s)
{
    if (s->proxy->upstream.connection) {
        FUNC1(NGX_LOG_DEBUG_MAIL, s->connection->log, 0,
                       "close mail proxy connection: %d",
                       s->proxy->upstream.connection->fd);

        FUNC0(s->proxy->upstream.connection);
    }

    FUNC2(s->connection);
}