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
struct TYPE_6__ {int is_mapped_file; scalar_t__ hfile; int /*<<< orphan*/  data; int /*<<< orphan*/  hmap; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

HRESULT FUNC11(ASSEMBLY **out, LPCWSTR file)
{
    ASSEMBLY *assembly;
    HRESULT hr;

    *out = NULL;

    assembly = FUNC6(FUNC4(), HEAP_ZERO_MEMORY, sizeof(ASSEMBLY));
    if (!assembly)
        return E_OUTOFMEMORY;

    assembly->is_mapped_file = 1;

    assembly->path = FUNC10(file);
    if (!assembly->path)
    {
        hr = E_OUTOFMEMORY;
        goto failed;
    }

    assembly->hfile = FUNC1(file, GENERIC_READ, FILE_SHARE_READ,
                                  NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (assembly->hfile == INVALID_HANDLE_VALUE)
    {
        hr = FUNC5(FUNC3());
        goto failed;
    }

    assembly->hmap = FUNC0(assembly->hfile, NULL, PAGE_READONLY,
                                        0, 0, NULL);
    if (!assembly->hmap)
    {
        hr = FUNC5(FUNC3());
        goto failed;
    }

    assembly->data = FUNC7(assembly->hmap, FILE_MAP_READ, 0, 0, 0);
    if (!assembly->data)
    {
        hr = FUNC5(FUNC3());
        goto failed;
    }

    hr = FUNC9(assembly);
    if (FUNC2(hr)) goto failed;

    *out = assembly;
    return S_OK;

failed:
    FUNC8(assembly);
    return hr;
}