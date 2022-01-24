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
typedef  int /*<<< orphan*/  IActiveScriptParseProcedure2 ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_VBScript ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScriptParseProcedure2 ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static BOOL FUNC3(void)
{
    IActiveScriptParseProcedure2 *vbscript;
    HRESULT hres;

    hres = FUNC0(&CLSID_VBScript, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScriptParseProcedure2, (void**)&vbscript);
    if(FUNC2(hres))
        FUNC1(vbscript);

    return hres == S_OK;
}