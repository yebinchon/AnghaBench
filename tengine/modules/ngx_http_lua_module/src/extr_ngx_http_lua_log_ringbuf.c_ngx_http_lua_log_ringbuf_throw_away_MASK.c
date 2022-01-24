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
struct TYPE_6__ {scalar_t__ count; scalar_t__ head; } ;
typedef  TYPE_1__ ngx_http_lua_log_ringbuf_t ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef  TYPE_2__ ngx_http_lua_log_ringbuf_header_t ;

/* Variables and functions */
 scalar_t__ HEADER_LEN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(ngx_http_lua_log_ringbuf_t *rb)
{
    ngx_http_lua_log_ringbuf_header_t       *head;

    if (rb->count == 0) {
        return;
    }

    head = (ngx_http_lua_log_ringbuf_header_t *) rb->head;

    rb->head += HEADER_LEN + head->len;
    rb->count--;

    if (rb->count == 0) {
        FUNC1(rb);
    }

    rb->head = FUNC0(rb);

    return;
}