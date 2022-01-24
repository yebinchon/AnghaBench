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
typedef  int /*<<< orphan*/  IXMLDOMSchemaCollection2 ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  IID_IXMLDOMSchemaCollection2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    IXMLDOMSchemaCollection2 *cache;
    IXMLDOMNode *node;
    HRESULT hr;

    cache = FUNC4(60, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;

    hr = FUNC2(cache, NULL, NULL);
    FUNC6(hr == E_NOTIMPL || hr == E_POINTER /* win8 */, "got %08x\n", hr);

    hr = FUNC2(cache, FUNC3("uri"), &node);
    FUNC0(hr, E_NOTIMPL);

    FUNC1(cache);

    cache = FUNC4(40, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;

    hr = FUNC2(cache, NULL, NULL);
    FUNC0(hr, E_POINTER);

    hr = FUNC2(cache, FUNC3("uri"), &node);
    FUNC0(hr, S_OK);

    FUNC1(cache);
    FUNC5();
}