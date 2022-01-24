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
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static IStream *FUNC6(const void *data, int data_size)
{
    HRESULT hr;
    IStream *stream;
    HGLOBAL hdata;
    void *locked_data;

    hdata = FUNC1(GMEM_MOVEABLE, data_size);
    FUNC5(hdata != 0, "GlobalAlloc failed\n");
    if (!hdata) return NULL;

    locked_data = FUNC2(hdata);
    FUNC4(locked_data, data, data_size);
    FUNC3(hdata);

    hr = FUNC0(hdata, TRUE, &stream);
    FUNC5(hr == S_OK, "CreateStreamOnHGlobal failed, hr=%x\n", hr);

    return stream;
}