#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ConnectionHandle; int /*<<< orphan*/  ClientProcessHandle; int /*<<< orphan*/  Entry; } ;
typedef  int /*<<< orphan*/  PLSA_API_MSG ;
typedef  TYPE_1__* PLSAP_LOGON_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static NTSTATUS
FUNC5(PLSA_API_MSG RequestMsg,
                           PLSAP_LOGON_CONTEXT LogonContext)
{
    FUNC4("LsapDeregisterLogonProcess(%p %p)\n", RequestMsg, LogonContext);

    FUNC1(&LogonContext->Entry);

    FUNC0(LogonContext->ClientProcessHandle);
    FUNC0(LogonContext->ConnectionHandle);

    FUNC2(FUNC3(), 0, LogonContext);

    return STATUS_SUCCESS;
}