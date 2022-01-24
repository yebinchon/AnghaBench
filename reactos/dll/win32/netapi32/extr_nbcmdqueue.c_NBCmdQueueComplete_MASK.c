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
struct NBCmdQueue {int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PNCB ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct NBCmdQueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NRC_BADDR ; 
 int /*<<< orphan*/  NRC_GOODRET ; 
 int /*<<< orphan*/  NRC_INVADDRESS ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct NBCmdQueue*,...) ; 

UCHAR FUNC7(struct NBCmdQueue *queue, PNCB ncb, UCHAR retcode)
{
    UCHAR ret;
    PNCB *spot;

    FUNC6(": queue %p, ncb %p\n", queue, ncb);

    if (!queue)
        return NRC_BADDR;
    if (!ncb)
        return NRC_INVADDRESS;

    FUNC1(&queue->cs);
    spot = FUNC3(queue, ncb);
    if (spot)
    {
        if (*FUNC0(*spot))
            FUNC5(*FUNC0(*spot));
        else
            *spot = *FUNC4(*spot);
        ret = NRC_GOODRET;
    }
    else
        ret = NRC_INVADDRESS;
    FUNC2(&queue->cs);
    FUNC6("returning 0x%02x\n", ret);
    return ret;
}