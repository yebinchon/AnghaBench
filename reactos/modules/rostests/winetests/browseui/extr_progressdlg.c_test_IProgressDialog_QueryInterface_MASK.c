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
typedef  int /*<<< orphan*/  IProgressDialog ;
typedef  int /*<<< orphan*/  IOleWindow ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ProgressDialog ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 int /*<<< orphan*/  IID_IProgressDialog ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(void)
{
    IProgressDialog *dlg;
    IProgressDialog *dlg2;
    IOleWindow *olewindow;
    IUnknown *unk;
    HRESULT hr;

    hr = FUNC0(&CLSID_ProgressDialog, NULL, CLSCTX_INPROC_SERVER, &IID_IProgressDialog, (void*)&dlg);
    if (FUNC1(hr)) {
        FUNC9("CoCreateInstance for IProgressDialog returned 0x%x\n", hr);
        return;
    }

    hr = FUNC4(dlg, &IID_IUnknown, NULL);
    FUNC8(hr == E_POINTER, "got 0x%x (expected E_POINTER)\n", hr);

    hr = FUNC4(dlg, &IID_IUnknown, (void**)&unk);
    FUNC8(hr == S_OK, "QueryInterface (IUnknown) returned 0x%x\n", hr);
    if (FUNC7(hr)) {
        FUNC6(unk);
    }

    hr = FUNC4(dlg, &IID_IOleWindow, (void**)&olewindow);
    FUNC8(hr == S_OK, "QueryInterface (IOleWindow) returned 0x%x\n", hr);
    if (FUNC7(hr)) {
        hr = FUNC2(olewindow, &IID_IProgressDialog, (void**)&dlg2);
        FUNC8(hr == S_OK, "QueryInterface (IProgressDialog) returned 0x%x\n", hr);
        if (FUNC7(hr)) {
            FUNC5(dlg2);
        }
        FUNC3(olewindow);
    }
    FUNC5(dlg);
}