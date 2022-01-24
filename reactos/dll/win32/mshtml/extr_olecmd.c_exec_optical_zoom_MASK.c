#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  nscontainer; } ;
typedef  TYPE_2__ HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ VT_I4 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static HRESULT FUNC6(HTMLDocument *This, DWORD nCmdexecopt, VARIANT *pvaIn, VARIANT *pvaOut)
{
    FUNC1("(%p)->(%d %s %p)\n", This, nCmdexecopt, FUNC4(pvaIn), pvaOut);

    if(!pvaIn || FUNC3(pvaIn) != VT_I4) {
        FUNC0("Unsupported argument %s\n", FUNC4(pvaIn));
        return E_NOTIMPL;
    }

    FUNC5(This->doc_obj->nscontainer, (float)FUNC2(pvaIn)/100);
    return S_OK;
}