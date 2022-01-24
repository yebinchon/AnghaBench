#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ d3d9_handle_t ;
struct TYPE_10__ {int owner; int /*<<< orphan*/  BufferFormat; int /*<<< orphan*/ * dev; int /*<<< orphan*/  adapterId; int /*<<< orphan*/  caps; } ;
typedef  TYPE_2__ d3d9_device_t ;
struct TYPE_12__ {int /*<<< orphan*/  DeviceType; int /*<<< orphan*/  AdapterOrdinal; } ;
struct TYPE_11__ {int /*<<< orphan*/  Format; } ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ D3DDISPLAYMODE ;
typedef  TYPE_4__ D3DDEVICE_CREATION_PARAMETERS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

HRESULT FUNC6(IDirect3DDevice9 *dev, d3d9_handle_t *hd3d,
                                  d3d9_device_t *out)
{
    D3DDEVICE_CREATION_PARAMETERS params;
    HRESULT hr = FUNC4(dev, &params);
    if (FUNC0(hr))
       return hr;
    out->dev   = dev;
    out->owner = false;
    out->adapterId = params.AdapterOrdinal;
    FUNC5(&out->caps, sizeof(out->caps));
    hr = FUNC2(hd3d->obj, out->adapterId, params.DeviceType, &out->caps);
    if (FUNC0(hr))
       return hr;
    D3DDISPLAYMODE d3ddm;
    hr = FUNC1(hd3d->obj, out->adapterId, &d3ddm);
    if (FUNC0(hr))
        return hr;
    FUNC3(out->dev);
    out->BufferFormat = d3ddm.Format;
    return S_OK;
}