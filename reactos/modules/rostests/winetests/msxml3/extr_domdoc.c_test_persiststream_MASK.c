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
typedef  int /*<<< orphan*/  clsid ;
typedef  int /*<<< orphan*/  ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPersistStreamInit ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  int /*<<< orphan*/  IPersist ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_DOMDocument2 ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  IID_IPersist ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  IID_IPersistStreamInit ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void)
{
    IPersistStreamInit *streaminit;
    IPersistStream *stream;
    IXMLDOMDocument *doc;
    ULARGE_INTEGER size;
    IPersist *persist;
    HRESULT hr;
    CLSID clsid;

    doc = FUNC9(&IID_IXMLDOMDocument);

    hr = FUNC6(doc, &IID_IPersistStreamInit, (void**)&streaminit);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(streaminit);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC1(streaminit, &size);
    FUNC11(hr == E_NOTIMPL, "got 0x%08x\n", hr);

    hr = FUNC6(doc, &IID_IPersistStream, (void **)&stream);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);
    FUNC11((IUnknown *)stream == (IUnknown *)streaminit, "got %p, %p\n", stream, streaminit);

    hr = FUNC4(stream, &IID_IPersist, (void **)&persist);
    FUNC11(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = FUNC6(doc, &IID_IPersist, (void **)&persist);
    FUNC11(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = FUNC0(streaminit, NULL);
    FUNC11(hr == E_POINTER, "got 0x%08x\n", hr);

    FUNC10(&clsid, 0, sizeof(clsid));
    hr = FUNC0(streaminit, &clsid);
    FUNC11(hr == S_OK, "got 0x%08x\n", hr);
    FUNC11(FUNC8(&clsid, &CLSID_DOMDocument2), "wrong clsid %s\n", FUNC12(&clsid));

    FUNC5(stream);
    FUNC3(streaminit);
    FUNC7(doc);
}