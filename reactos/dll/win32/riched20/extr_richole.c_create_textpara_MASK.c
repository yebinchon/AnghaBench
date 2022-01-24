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
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ ITextPara_iface; int /*<<< orphan*/ * range; } ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  TYPE_1__ ITextParaImpl ;
typedef  TYPE_2__ ITextPara ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  textparavtbl ; 

__attribute__((used)) static HRESULT FUNC2(ITextRange *range, ITextPara **ret)
{
    ITextParaImpl *para;

    *ret = NULL;
    para = FUNC1(sizeof(*para));
    if (!para)
        return E_OUTOFMEMORY;

    para->ITextPara_iface.lpVtbl = &textparavtbl;
    para->ref = 1;
    para->range = range;
    FUNC0(range);

    *ret = &para->ITextPara_iface;
    return S_OK;
}