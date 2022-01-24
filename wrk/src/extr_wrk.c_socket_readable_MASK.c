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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_6__* thread; int /*<<< orphan*/  parser; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ connection ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_8__ {int /*<<< orphan*/  read; } ;
struct TYPE_11__ {size_t bytes; TYPE_1__ errors; } ;
struct TYPE_10__ {scalar_t__ (* readable ) (TYPE_2__*) ;int (* read ) (TYPE_2__*,size_t*) ;} ;

/* Variables and functions */
#define  ERROR 130 
#define  OK 129 
 size_t RECVBUF ; 
#define  RETRY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  parser_settings ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_2__*) ; 
 TYPE_5__ sock ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,size_t*) ; 

__attribute__((used)) static void FUNC5(aeEventLoop *loop, int fd, void *data, int mask) {
    connection *c = data;
    size_t n;

    do {
        switch (sock.read(c, &n)) {
            case OK:    break;
            case ERROR: goto error;
            case RETRY: return;
        }

        if (FUNC1(&c->parser, &parser_settings, c->buf, n) != n) goto error;
        if (n == 0 && !FUNC0(&c->parser)) goto error;

        c->thread->bytes += n;
    } while (n == RECVBUF && sock.readable(c) > 0);

    return;

  error:
    c->thread->errors.read++;
    FUNC2(c->thread, c);
}