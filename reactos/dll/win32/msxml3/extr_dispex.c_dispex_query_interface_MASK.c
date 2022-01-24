#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ IID ;
typedef  TYPE_3__ DispatchEx ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__ const IID_IDispatch ; 
 TYPE_2__ const IID_IDispatchEx ; 
 TYPE_2__ const IID_IObjectIdentity ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3(DispatchEx *This, REFIID riid, void **ppv)
{
    static const IID IID_UndocumentedScriptIface =
        {0x719c3050,0xf9d3,0x11cf,{0xa4,0x93,0x00,0x40,0x05,0x23,0xa8,0xa0}};
    static const IID IID_IDispatchJS =
        {0x719c3050,0xf9d3,0x11cf,{0xa4,0x93,0x00,0x40,0x05,0x23,0xa8,0xa6}};

    if(FUNC1(&IID_IDispatch, riid)) {
        FUNC2("(%p)->(IID_IDispatch %p)\n", This, ppv);
        *ppv = &This->IDispatchEx_iface;
    }else if(FUNC1(&IID_IDispatchEx, riid)) {
        FUNC2("(%p)->(IID_IDispatchEx %p)\n", This, ppv);
        *ppv = &This->IDispatchEx_iface;
    }else if(FUNC1(&IID_IDispatchJS, riid)) {
        FUNC2("(%p)->(IID_IDispatchJS %p) returning NULL\n", This, ppv);
        *ppv = NULL;
    }else if(FUNC1(&IID_UndocumentedScriptIface, riid)) {
        FUNC2("(%p)->(IID_UndocumentedScriptIface %p) returning NULL\n", This, ppv);
        *ppv = NULL;
    }else if (FUNC1(&IID_IObjectIdentity, riid)) {
        FUNC2("IID_IObjectIdentity not supported returning NULL\n");
        *ppv = NULL;
    }else {
        return FALSE;
    }

    if(*ppv)
        FUNC0((IUnknown*)*ppv);
    return TRUE;
}