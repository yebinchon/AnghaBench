#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  node; int /*<<< orphan*/  IInternetHostSecurityManager_iface; int /*<<< orphan*/  basedoc; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  IID_IInternetHostSecurityManager ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLDocumentNode *This = FUNC6(iface);

    FUNC3("(%p)->(%s %p)\n", This, FUNC4(riid), ppv);

    if(FUNC5(&This->basedoc, riid, ppv))
        return *ppv ? S_OK : E_NOINTERFACE;

    if(FUNC2(&IID_IInternetHostSecurityManager, riid))
        *ppv = &This->IInternetHostSecurityManager_iface;
    else
        return FUNC0(&This->node, riid, ppv);

    FUNC1((IUnknown*)*ppv);
    return S_OK;
}