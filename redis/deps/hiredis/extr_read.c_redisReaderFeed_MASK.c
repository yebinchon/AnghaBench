#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ maxbuf; int /*<<< orphan*/ * buf; scalar_t__ pos; scalar_t__ err; } ;
typedef  TYPE_1__ redisReader ;

/* Variables and functions */
 int REDIS_ERR ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(redisReader *r, const char *buf, size_t len) {
    sds newbuf;

    /* Return early when this reader is in an erroneous state. */
    if (r->err)
        return REDIS_ERR;

    /* Copy the provided buffer. */
    if (buf != NULL && len >= 1) {
        /* Destroy internal buffer when it is empty and is quite large. */
        if (r->len == 0 && r->maxbuf != 0 && FUNC2(r->buf) > r->maxbuf) {
            FUNC5(r->buf);
            r->buf = FUNC4();
            r->pos = 0;

            /* r->buf should not be NULL since we just free'd a larger one. */
            FUNC1(r->buf != NULL);
        }

        newbuf = FUNC3(r->buf,buf,len);
        if (newbuf == NULL) {
            FUNC0(r);
            return REDIS_ERR;
        }

        r->buf = newbuf;
        r->len = FUNC6(r->buf);
    }

    return REDIS_OK;
}