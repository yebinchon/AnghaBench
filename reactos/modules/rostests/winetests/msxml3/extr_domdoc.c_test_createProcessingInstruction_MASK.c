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
typedef  int /*<<< orphan*/  bodyW ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IXMLDOMProcessingInstruction ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR bodyW[] = {'t','e','s','t',0};
    IXMLDOMProcessingInstruction *pi;
    IXMLDOMDocument *doc;
    WCHAR buff[10];
    HRESULT hr;

    doc = FUNC4(&IID_IXMLDOMDocument);

    /* test for BSTR handling, pass broken BSTR */
    FUNC5(&buff[2], bodyW, sizeof(bodyW));
    /* just a big length */
    *(DWORD*)buff = 0xf0f0;
    hr = FUNC1(doc, FUNC3("test"), &buff[2], &pi);
    FUNC6(hr == S_OK, "got 0x%08x\n", hr);

    FUNC2(pi);
    FUNC0(doc);
}