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
typedef  int UINT ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; int fmtetc_cnt; TYPE_1__ IEnumFORMATETC_iface; int /*<<< orphan*/  fmtetc; scalar_t__ cur; } ;
typedef  TYPE_1__ IEnumFORMATETC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FORMATETC ;
typedef  TYPE_2__ EnumFormatImpl ;

/* Variables and functions */
 int /*<<< orphan*/  GMEM_ZEROINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VT_EnumFormatImpl ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static HRESULT FUNC4(const FORMATETC *fmtetc, UINT fmtetc_cnt,
                                     IEnumFORMATETC **formatetc)
{
    EnumFormatImpl *ret;
    FUNC1("\n");

    ret = FUNC2(sizeof(EnumFormatImpl));
    ret->IEnumFORMATETC_iface.lpVtbl = &VT_EnumFormatImpl;
    ret->ref = 1;
    ret->cur = 0;
    ret->fmtetc_cnt = fmtetc_cnt;
    ret->fmtetc = FUNC0(GMEM_ZEROINIT, fmtetc_cnt*sizeof(FORMATETC));
    FUNC3(ret->fmtetc, fmtetc, fmtetc_cnt*sizeof(FORMATETC));
    *formatetc = &ret->IEnumFORMATETC_iface;
    return S_OK;
}