#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_2__ ITextHost_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITextServices ;
typedef  TYPE_1__ ITextHostTestImpl ;
typedef  TYPE_2__ ITextHost ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  itextHostVtbl ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  pIID_ITextServices ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static BOOL FUNC7(ITextServices **txtserv, ITextHost **ret)
{
    ITextHostTestImpl *dummyTextHost;
    IUnknown *init;
    HRESULT result;

    dummyTextHost = FUNC0(sizeof(*dummyTextHost));
    if (dummyTextHost == NULL) {
        FUNC6("Insufficient memory to create ITextHost interface\n");
        return FALSE;
    }
    dummyTextHost->ITextHost_iface.lpVtbl = &itextHostVtbl;
    dummyTextHost->refCount = 1;

    /* MSDN states that an IUnknown object is returned by
       CreateTextServices which is then queried to obtain a
       ITextServices object. */
    result = FUNC5(NULL, &dummyTextHost->ITextHost_iface, &init);
    FUNC4(result == S_OK, "Did not return S_OK when created (result =  %x)\n", result);
    if (result != S_OK) {
        FUNC1(dummyTextHost);
        FUNC6("CreateTextServices failed.\n");
        return FALSE;
    }

    result = FUNC2(init, pIID_ITextServices, (void**)txtserv);
    FUNC4((result == S_OK) && (*txtserv != NULL), "Querying interface failed (result = %x, txtserv = %p)\n", result, *txtserv);
    FUNC3(init);
    if (!((result == S_OK) && (*txtserv != NULL))) {
        FUNC1(dummyTextHost);
        FUNC6("Could not retrieve ITextServices interface\n");
        return FALSE;
    }

    *ret = &dummyTextHost->ITextHost_iface;
    return TRUE;
}