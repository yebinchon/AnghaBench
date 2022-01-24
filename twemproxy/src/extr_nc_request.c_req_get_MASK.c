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
struct msg {int dummy; } ;
struct conn {int /*<<< orphan*/  err; int /*<<< orphan*/  redis; int /*<<< orphan*/  proxy; scalar_t__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 struct msg* FUNC1 (struct conn*,int,int /*<<< orphan*/ ) ; 

struct msg *
FUNC2(struct conn *conn)
{
    struct msg *msg;

    FUNC0(conn->client && !conn->proxy);

    msg = FUNC1(conn, true, conn->redis);
    if (msg == NULL) {
        conn->err = errno;
    }
    return msg;
}