#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {TYPE_1__* Process; } ;
struct TYPE_3__ {int /*<<< orphan*/  ProcessHandle; } ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  DUPLICATE_CLOSE_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID FUNC3(HANDLE ServerEvent, HANDLE ClientEvent)
{
    if (ServerEvent) FUNC1(ServerEvent);
    if (ClientEvent)
    {
        /* Close the remote handle */
        FUNC2(FUNC0()->Process->ProcessHandle,
                          ClientEvent,
                          NULL,
                          NULL,
                          0,
                          0,
                          DUPLICATE_CLOSE_SOURCE);
    }
}