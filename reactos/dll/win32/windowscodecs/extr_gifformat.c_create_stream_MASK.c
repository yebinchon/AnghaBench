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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (void*,void const*,int) ; 

__attribute__((used)) static IStream *FUNC6(const void *data, int data_size)
{
    HRESULT hr;
    IStream *stream;
    HGLOBAL hdata;
    void *locked_data;

    hdata = FUNC2(GMEM_MOVEABLE, data_size);
    if (!hdata) return NULL;

    locked_data = FUNC3(hdata);
    FUNC5(locked_data, data, data_size);
    FUNC4(hdata);

    hr = FUNC0(hdata, TRUE, &stream);
    return FUNC1(hr) ? NULL : stream;
}