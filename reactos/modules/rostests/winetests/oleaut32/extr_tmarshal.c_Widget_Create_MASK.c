#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int refs; TYPE_2__ IWidget_iface; int /*<<< orphan*/ * pDispatchUnknown; } ;
typedef  TYPE_1__ Widget ;
typedef  TYPE_2__ IWidget ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IID_IWidget ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Widget_VTable ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **)) ; 

__attribute__((used)) static IWidget *FUNC8(void)
{
    Widget *This;
    ITypeInfo *pTypeInfo;
    HRESULT hr = E_FAIL;

    pTypeInfo = FUNC6(&IID_IWidget);
    if(!pTypeInfo)
        return NULL;

    This = FUNC2(FUNC1(), 0, sizeof(*This));
    This->IWidget_iface.lpVtbl = &Widget_VTable;
    This->refs = 1;
    This->pDispatchUnknown = NULL;

    hr = FUNC0((IUnknown *)&This->IWidget_iface, This, pTypeInfo,
                           &This->pDispatchUnknown);
    FUNC7(hr, CreateStdDispatch);
    FUNC4(pTypeInfo);

    if (FUNC5(hr))
        return &This->IWidget_iface;
    else
    {
        FUNC3(FUNC1(), 0, This);
        return NULL;
    }
}