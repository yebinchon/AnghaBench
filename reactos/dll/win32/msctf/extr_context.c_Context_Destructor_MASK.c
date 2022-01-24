#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  CompartmentMgr; int /*<<< orphan*/  pTextLayoutSink; int /*<<< orphan*/  pTextEditSink; int /*<<< orphan*/  pStatusSink; int /*<<< orphan*/  pEditTransactionSink; int /*<<< orphan*/  pContextKeyEventSink; scalar_t__ defaultCookie; scalar_t__ pITfContextOwnerCompositionSink; scalar_t__ pITextStoreACP; } ;
typedef  TYPE_1__ EditCookie ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(Context *This)
{
    EditCookie *cookie;
    FUNC5("destroying %p\n", This);

    if (This->pITextStoreACP)
        FUNC3(This->pITextStoreACP);

    if (This->pITfContextOwnerCompositionSink)
        FUNC4(This->pITfContextOwnerCompositionSink);

    if (This->defaultCookie)
    {
        cookie = FUNC7(This->defaultCookie);
        FUNC2(FUNC1(),0,cookie);
        This->defaultCookie = 0;
    }

    FUNC6(&This->pContextKeyEventSink);
    FUNC6(&This->pEditTransactionSink);
    FUNC6(&This->pStatusSink);
    FUNC6(&This->pTextEditSink);
    FUNC6(&This->pTextLayoutSink);

    FUNC0(This->CompartmentMgr);
    FUNC2(FUNC1(),0,This);
}