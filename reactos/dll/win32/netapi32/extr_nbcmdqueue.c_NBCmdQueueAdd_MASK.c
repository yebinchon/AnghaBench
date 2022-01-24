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
struct NBCmdQueue {int /*<<< orphan*/  cs; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  scalar_t__ PNCB ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NRC_BADDR ; 
 int /*<<< orphan*/  NRC_GOODRET ; 
 int /*<<< orphan*/  NRC_INVADDRESS ; 
 int /*<<< orphan*/  FUNC4 (char*,struct NBCmdQueue*,...) ; 

UCHAR FUNC5(struct NBCmdQueue *queue, PNCB ncb)
{
    UCHAR ret;

    FUNC4(": queue %p, ncb %p\n", queue, ncb);

    if (!queue)
        return NRC_BADDR;
    if (!ncb)
        return NRC_INVADDRESS;

    *FUNC0(ncb) = NULL;
    FUNC1(&queue->cs);
    *FUNC3(ncb) = queue->head;
    queue->head = ncb;
    ret = NRC_GOODRET;
    FUNC2(&queue->cs);
    FUNC4("returning 0x%02x\n", ret);
    return ret;
}