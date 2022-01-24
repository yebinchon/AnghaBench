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
typedef  int /*<<< orphan*/  IDXGIDevice ;
typedef  int /*<<< orphan*/  IDXGIAdapter ;
typedef  int /*<<< orphan*/  ID3D11Device ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDXGIDevice ; 

IDXGIAdapter *FUNC4(ID3D11Device *d3ddev)
{
    IDXGIDevice *pDXGIDevice = NULL;
    HRESULT hr = FUNC1(d3ddev, &IID_IDXGIDevice, (void **)&pDXGIDevice);
    if (FUNC0(hr)) {
        return NULL;
    }

    IDXGIAdapter *p_adapter;
    hr = FUNC2(pDXGIDevice, &p_adapter);
    FUNC3(pDXGIDevice);
    if (FUNC0(hr)) {
        return NULL;
    }
    return p_adapter;
}