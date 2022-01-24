#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {TYPE_1__* DebugInfo; } ;
struct TYPE_7__ {TYPE_5__ cs; scalar_t__ bytesPending; int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {scalar_t__* Spare; } ;
typedef  TYPE_2__ NetBTSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  NRC_GOODRET ; 
 int /*<<< orphan*/  NRC_SNUMOUT ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UCHAR FUNC5(void *adapt, void *sess)
{
    NetBTSession *session = sess;

    FUNC3("adapt %p, session %p\n", adapt, session);

    if (!session) return NRC_SNUMOUT;

    /* I don't lock the session, because NetBTRecv knows not to decrement
     * past 0, so if a receive completes after this it should still deal.
     */
    FUNC4(session->fd);
    session->fd = INVALID_SOCKET;
    session->bytesPending = 0;
    session->cs.DebugInfo->Spare[0] = 0;
    FUNC0(&session->cs);
    FUNC2(FUNC1(), 0, session);

    return NRC_GOODRET;
}