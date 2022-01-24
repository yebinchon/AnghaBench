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
struct TYPE_5__ {size_t pos; size_t read_limit; size_t read_so_far; scalar_t__ buf; int /*<<< orphan*/  conn; } ;
struct TYPE_6__ {TYPE_1__ conn; } ;
struct TYPE_7__ {TYPE_2__ io; } ;
typedef  TYPE_3__ rio ;

/* Variables and functions */
 scalar_t__ EOVERFLOW ; 
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ EWOULDBLOCK ; 
 size_t PROTO_IOBUF_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__,size_t) ; 
 size_t FUNC4 (scalar_t__) ; 
 size_t FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,size_t,int) ; 

__attribute__((used)) static size_t FUNC7(rio *r, void *buf, size_t len) {
    size_t avail = FUNC5(r->io.conn.buf)-r->io.conn.pos;

    /* If the buffer is too small for the entire request: realloc. */
    if (FUNC5(r->io.conn.buf) + FUNC4(r->io.conn.buf) < len)
        r->io.conn.buf = FUNC3(r->io.conn.buf, len - FUNC5(r->io.conn.buf));

    /* If the remaining unused buffer is not large enough: memmove so that we
     * can read the rest. */
    if (len > avail && FUNC4(r->io.conn.buf) < len - avail) {
        FUNC6(r->io.conn.buf, r->io.conn.pos, -1);
        r->io.conn.pos = 0;
    }

    /* If we don't already have all the data in the sds, read more */
    while (len > FUNC5(r->io.conn.buf) - r->io.conn.pos) {
        size_t buffered = FUNC5(r->io.conn.buf) - r->io.conn.pos;
        size_t toread = len - buffered;
        /* Read either what's missing, or PROTO_IOBUF_LEN, the bigger of
         * the two. */
        if (toread < PROTO_IOBUF_LEN) toread = PROTO_IOBUF_LEN;
        if (toread > FUNC4(r->io.conn.buf)) toread = FUNC4(r->io.conn.buf);
        if (r->io.conn.read_limit != 0 &&
            r->io.conn.read_so_far + buffered + toread > r->io.conn.read_limit)
        {
            if (r->io.conn.read_limit >= r->io.conn.read_so_far - buffered)
                toread = r->io.conn.read_limit - r->io.conn.read_so_far - buffered;
            else {
                errno = EOVERFLOW;
                return 0;
            }
        }
        int retval = FUNC0(r->io.conn.conn,
                          (char*)r->io.conn.buf + FUNC5(r->io.conn.buf),
                          toread);
        if (retval <= 0) {
            if (errno == EWOULDBLOCK) errno = ETIMEDOUT;
            return 0;
        }
        FUNC2(r->io.conn.buf, retval);
    }

    FUNC1(buf, (char*)r->io.conn.buf + r->io.conn.pos, len);
    r->io.conn.read_so_far += len;
    r->io.conn.pos += len;
    return len;
}