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
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IXMLDOMSchemaCollection2 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  IID_IXMLDOMSchemaCollection2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VARIANT_FALSE ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    IXMLDOMSchemaCollection2 *cache;
    VARIANT_BOOL b;
    HRESULT hr;

    cache = FUNC3(40, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;

    hr = FUNC2(cache, NULL);
    FUNC0(hr, E_POINTER);

    b = VARIANT_FALSE;
    hr = FUNC2(cache, &b);
    FUNC0(hr, S_OK);
    FUNC4(b == VARIANT_TRUE, "got %d\n", b);

    FUNC1(cache);
}