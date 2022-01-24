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
struct msg {int /*<<< orphan*/  pos; int /*<<< orphan*/  mhdr; } ;
struct mbuf {int /*<<< orphan*/  pos; } ;
struct context {int dummy; } ;
struct conn {int dummy; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static rstatus_t
FUNC2(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct mbuf *nbuf;

    nbuf = FUNC1(&msg->mhdr, msg->pos, NULL, NULL);
    if (nbuf == NULL) {
        return NC_ENOMEM;
    }
    FUNC0(&msg->mhdr, nbuf);
    msg->pos = nbuf->pos;

    return NC_OK;
}