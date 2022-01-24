#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; scalar_t__ is_mapped_file; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HMODULE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_1__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

HRESULT FUNC5(ASSEMBLY **out, HMODULE hmodule)
{
    ASSEMBLY *assembly;
    HRESULT hr;

    *out = NULL;

    assembly = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(ASSEMBLY));
    if (!assembly)
        return E_OUTOFMEMORY;

    assembly->is_mapped_file = 0;

    assembly->data = (BYTE*)hmodule;

    hr = FUNC4(assembly);
    if (FUNC2(hr))
        *out = assembly;
    else
        FUNC3(assembly);

    return hr;
}