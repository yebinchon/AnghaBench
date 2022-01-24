#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; int fmtetc_cnt; TYPE_1__ IEnumFORMATETC_iface; void* fmtetc; scalar_t__ cur; } ;
typedef  TYPE_1__ IEnumFORMATETC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FORMATETC ;
typedef  TYPE_2__ EnumFormatImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_EnumFormatImpl ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC3(FORMATETC *fmtetc, UINT fmtetc_cnt, IEnumFORMATETC **lplpformatetc)
{
    EnumFormatImpl *ret;

    ret = FUNC1(FUNC0(), 0, sizeof(EnumFormatImpl));
    ret->IEnumFORMATETC_iface.lpVtbl = &VT_EnumFormatImpl;
    ret->ref = 1;
    ret->cur = 0;
    ret->fmtetc_cnt = fmtetc_cnt;
    ret->fmtetc = FUNC1(FUNC0(), 0, fmtetc_cnt*sizeof(FORMATETC));
    FUNC2(ret->fmtetc, fmtetc, fmtetc_cnt*sizeof(FORMATETC));
    *lplpformatetc = &ret->IEnumFORMATETC_iface;
    return S_OK;
}