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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  ID3D10Blob ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ D3DERR_INVALIDCALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC3(void)
{
    ID3D10Blob *blob;
    HRESULT hr;
    ULONG refcount;

    hr = FUNC2(1, NULL);
    FUNC1(hr == D3DERR_INVALIDCALL, "D3DCreateBlob failed with %x\n", hr);

    hr = FUNC2(0, NULL);
    FUNC1(hr == D3DERR_INVALIDCALL, "D3DCreateBlob failed with %x\n", hr);

    hr = FUNC2(0, &blob);
    FUNC1(hr == S_OK, "D3DCreateBlob failed with %x\n", hr);

    refcount = FUNC0(blob);
    FUNC1(!refcount, "ID3DBlob has %u references left\n", refcount);
}