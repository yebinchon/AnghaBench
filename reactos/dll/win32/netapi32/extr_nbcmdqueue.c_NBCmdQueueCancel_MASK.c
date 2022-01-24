#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct NBCmdQueue {int /*<<< orphan*/  cs; } ;
typedef  scalar_t__ UCHAR ;
struct TYPE_8__ {scalar_t__ ncb_retcode; } ;
typedef  TYPE_1__* PNCB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC5 (struct NBCmdQueue*,TYPE_1__*) ; 
 TYPE_1__** FUNC6 (TYPE_1__*) ; 
 scalar_t__ NRC_BADDR ; 
 scalar_t__ NRC_CANOCCR ; 
 scalar_t__ NRC_CMDCAN ; 
 scalar_t__ NRC_INVADDRESS ; 
 int /*<<< orphan*/  FUNC7 (char*,struct NBCmdQueue*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

UCHAR FUNC9(struct NBCmdQueue *queue, PNCB ncb)
{
    UCHAR ret;
    PNCB *spot;

    FUNC7(": queue %p, ncb %p\n", queue, ncb);

    if (!queue)
        return NRC_BADDR;
    if (!ncb)
        return NRC_INVADDRESS;

    FUNC3(&queue->cs);
    spot = FUNC5(queue, ncb);
    if (spot)
    {
        *FUNC0(*spot) = FUNC2(NULL, FALSE, FALSE, NULL);
        FUNC8(*FUNC0(*spot), INFINITE);
        FUNC1(*FUNC0(*spot));
        *spot = *FUNC6(*spot);
        if (ncb->ncb_retcode == NRC_CMDCAN)
            ret = NRC_CMDCAN;
        else
            ret = NRC_CANOCCR;
    }
    else
        ret = NRC_INVADDRESS;
    FUNC4(&queue->cs);
    FUNC7("returning 0x%02x\n", ret);
    return ret;
}