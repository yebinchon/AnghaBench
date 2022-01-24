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
typedef  int /*<<< orphan*/  uint32_t ;
struct msg_tqh {int dummy; } ;
struct msg {int type; int /*<<< orphan*/  keys; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
#define  MSG_REQ_REDIS_DEL 130 
#define  MSG_REQ_REDIS_MGET 129 
#define  MSG_REQ_REDIS_MSET 128 
 int /*<<< orphan*/  NC_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msg*,int /*<<< orphan*/ ,struct msg_tqh*,int) ; 

rstatus_t
FUNC2(struct msg *r, uint32_t ncontinuum, struct msg_tqh *frag_msgq)
{
    if (1 == FUNC0(r->keys)){
        return NC_OK;
    }

    switch (r->type) {
    case MSG_REQ_REDIS_MGET:
    case MSG_REQ_REDIS_DEL:
        return FUNC1(r, ncontinuum, frag_msgq, 1);

    case MSG_REQ_REDIS_MSET:
        return FUNC1(r, ncontinuum, frag_msgq, 2);

    default:
        return NC_OK;
    }
}