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
struct TYPE_5__ {int /*<<< orphan*/  CompartmentMgr; int /*<<< orphan*/  TransitoryExtensionSink; scalar_t__* contextStack; int /*<<< orphan*/  ITfDocumentMgr_iface; } ;
typedef  int /*<<< orphan*/  ITfThreadMgr ;
typedef  TYPE_1__ DocumentMgr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(DocumentMgr *This)
{
    ITfThreadMgr *tm = NULL;
    FUNC6("destroying %p\n", This);

    FUNC5(&tm);
    if (tm)
    {
        FUNC7(tm, &This->ITfDocumentMgr_iface);
        FUNC4(tm);
    }

    if (This->contextStack[0])
        FUNC3(This->contextStack[0]);
    if (This->contextStack[1])
        FUNC3(This->contextStack[1]);
    FUNC8(&This->TransitoryExtensionSink);
    FUNC0(This->CompartmentMgr);
    FUNC2(FUNC1(),0,This);
}