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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(IStream *stream, BYTE *type, BYTE **data, ULONG *data_size)
{
    BYTE header[8];
    HRESULT hr;
    ULONG bytesread;

    hr = FUNC4(stream, header, 8, &bytesread);
    if (FUNC0(hr) || bytesread < 8)
    {
        if (FUNC5(hr))
            hr = E_FAIL;
        return hr;
    }

    *data_size = FUNC7(&header[0]);

    FUNC6(type, &header[4], 4);

    if (data)
    {
        *data = FUNC2(FUNC1(), 0, *data_size);
        if (!*data)
            return E_OUTOFMEMORY;

        hr = FUNC4(stream, *data, *data_size, &bytesread);

        if (FUNC0(hr) || bytesread < *data_size)
        {
            if (FUNC5(hr))
                hr = E_FAIL;
            FUNC3(FUNC1(), 0, *data);
            *data = NULL;
            return hr;
        }

        /* Windows ignores CRC of the chunk */
    }

    return S_OK;
}