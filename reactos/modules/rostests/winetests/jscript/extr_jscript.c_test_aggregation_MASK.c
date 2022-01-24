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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ CLASS_E_NOAGGREGATION ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_JScript ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
    IUnknown *unk = (IUnknown*)0xdeadbeef;
    HRESULT hres;

    hres = FUNC0(&CLSID_JScript, (IUnknown*)0xdeadbeef, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&unk);
    FUNC2(hres == CLASS_E_NOAGGREGATION,
       "CoCreateInstance failed: %08x, expected CLASS_E_NOAGGREGATION\n", hres);
    FUNC2(!unk || FUNC1(unk != NULL), "unk = %p\n", unk);
}