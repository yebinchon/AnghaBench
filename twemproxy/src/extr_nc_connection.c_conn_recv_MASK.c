#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct conn {int recv_ready; size_t recv_bytes; int eof; int /*<<< orphan*/  sd; scalar_t__ err; int /*<<< orphan*/  send_bytes; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_VERB ; 
 scalar_t__ NC_EAGAIN ; 
 scalar_t__ NC_ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

ssize_t
FUNC6(struct conn *conn, void *buf, size_t size)
{
    ssize_t n;

    FUNC0(buf != NULL);
    FUNC0(size > 0);
    FUNC0(conn->recv_ready);

    for (;;) {
        n = FUNC4(conn->sd, buf, size);

        FUNC2(LOG_VERB, "recv on sd %d %zd of %zu", conn->sd, n, size);

        if (n > 0) {
            if (n < (ssize_t) size) {
                conn->recv_ready = 0;
            }
            conn->recv_bytes += (size_t)n;
            return n;
        }

        if (n == 0) {
            conn->recv_ready = 0;
            conn->eof = 1;
            FUNC2(LOG_INFO, "recv on sd %d eof rb %zu sb %zu", conn->sd,
                      conn->recv_bytes, conn->send_bytes);
            return n;
        }

        if (errno == EINTR) {
            FUNC2(LOG_VERB, "recv on sd %d not ready - eintr", conn->sd);
            continue;
        } else if (errno == EAGAIN || errno == EWOULDBLOCK) {
            conn->recv_ready = 0;
            FUNC2(LOG_VERB, "recv on sd %d not ready - eagain", conn->sd);
            return NC_EAGAIN;
        } else {
            conn->recv_ready = 0;
            conn->err = errno;
            FUNC3("recv on sd %d failed: %s", conn->sd, FUNC5(errno));
            return NC_ERROR;
        }
    }

    FUNC1();

    return NC_ERROR;
}