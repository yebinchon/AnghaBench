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
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLIENTSITE_DONTSET ; 
 int CLIENTSITE_SETNULL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FALSE ; 
 int /*<<< orphan*/  GetContainer ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LockContainer ; 
 int /*<<< orphan*/  OLECLOSE_NOSAVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 void* container_locked ; 
 void* expect_LockContainer_fLock ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc, BOOL set_client)
{
    IOleObject *oleobj = NULL;
    HRESULT hres;

    hres = FUNC2(doc, &IID_IOleObject, (void**)&oleobj);
    FUNC6(hres == S_OK, "QueryInterface(IID_IOleObject) failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    FUNC5(GetContainer);
    FUNC5(LockContainer);
    expect_LockContainer_fLock = FALSE;
    hres = FUNC3(oleobj, OLECLOSE_NOSAVE);
    FUNC6(hres == S_OK, "Close failed: %08x\n", hres);
    FUNC0(GetContainer);
    FUNC0(LockContainer);
    container_locked = FALSE;

    if(set_client)
        FUNC7(oleobj, CLIENTSITE_SETNULL|CLIENTSITE_DONTSET);

    FUNC4(oleobj);
}