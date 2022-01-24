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
typedef  int /*<<< orphan*/  IMXWriter ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_MXXMLWriter ; 
 int /*<<< orphan*/  CLSID_MXXMLWriter60 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_IMXWriter ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxwriter_support_data ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    IDispatchEx *dispex;
    IMXWriter *writer;
    IUnknown *unk;
    HRESULT hr;

    hr = FUNC0(&CLSID_MXXMLWriter, NULL, CLSCTX_INPROC_SERVER,
            &IID_IMXWriter, (void**)&writer);
    FUNC1(hr, S_OK);

    hr = FUNC4(writer, &IID_IDispatchEx, (void**)&dispex);
    FUNC1(hr, S_OK);
    hr = FUNC2(dispex, &IID_IUnknown, (void**)&unk);
    FUNC9(unk);
    FUNC6(unk);
    FUNC3(dispex);
    FUNC5(writer);

    if (FUNC7(&CLSID_MXXMLWriter60, mxwriter_support_data))
    {
        hr = FUNC0(&CLSID_MXXMLWriter60, NULL, CLSCTX_INPROC_SERVER, &IID_IUnknown, (void**)&unk);
        FUNC8(hr == S_OK, "got 0x%08x\n", hr);
        FUNC9(unk);
        FUNC6(unk);
    }
}