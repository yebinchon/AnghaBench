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
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_FALSE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
    IXMLDOMDocument *doc;
    HRESULT hr;
    BSTR s;

    doc = FUNC2(&IID_IXMLDOMDocument);

    hr = FUNC1(doc, NULL);
    FUNC3(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    s = (void *)0xdeadbeef;
    hr = FUNC1(doc, &s);
    FUNC3(hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC3(s == NULL, "got %s\n", FUNC4(s));

    FUNC0(doc);
}