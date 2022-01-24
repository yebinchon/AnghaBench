#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IBindStatusCallback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bscb_holderW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC5(IBindCtx *pbc, IBindStatusCallback **callback)
{
    IUnknown *unk;
    HRESULT hres;

    hres = FUNC1(pbc, bscb_holderW, &unk);
    if(FUNC0(hres))
        return FUNC4(callback);

    hres = FUNC2(unk, &IID_IBindStatusCallback, (void**)callback);
    FUNC3(unk);
    return hres;
}