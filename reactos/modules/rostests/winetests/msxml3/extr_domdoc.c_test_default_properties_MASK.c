#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  clsid; int /*<<< orphan*/  value; int /*<<< orphan*/  property; scalar_t__ guid; } ;
typedef  TYPE_1__ property_test_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IXMLDOMDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__,...) ; 
 TYPE_1__* properties_test_data ; 

__attribute__((used)) static void FUNC9(void)
{
    const property_test_t *entry = properties_test_data;

    while (entry->guid)
    {
        IXMLDOMDocument2 *doc;
        VARIANT var;
        HRESULT hr;

        if (!FUNC6(entry->guid, &IID_IXMLDOMDocument2))
        {
            entry++;
            continue;
        }

        hr = FUNC0(entry->guid, NULL, CLSCTX_INPROC_SERVER, &IID_IXMLDOMDocument2, (void**)&doc);
        FUNC8(hr == S_OK, "got 0x%08x\n", hr);

        hr = FUNC2(doc, FUNC5(entry->property), &var);
        FUNC8(hr == S_OK, "got 0x%08x\n", hr);
        FUNC8(FUNC7(FUNC3(&var), FUNC5(entry->value)) == 0, "expected %s, for %s\n",
           entry->value, entry->clsid);
        FUNC4(&var);

        FUNC1(doc);

        entry++;
    }
}