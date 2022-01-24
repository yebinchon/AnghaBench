#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULARGE_INTEGER ;
struct TYPE_4__ {int QuadPart; } ;
struct TYPE_5__ {TYPE_1__ cbSize; } ;
typedef  TYPE_2__ STATSTG ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  ILockBytes ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_DENY_NONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC11(IStream *stm, IStorage **stg)
{
    ILockBytes *lockbytes = NULL;
    STATSTG stat;
    LPVOID data;
    HRESULT hr;
    DWORD size, read;
    ULARGE_INTEGER offset;

    hr = FUNC6(stm, &stat, STATFLAG_NONAME);
    if (FUNC2(hr))
        return hr;

    if (stat.cbSize.QuadPart >> 32)
    {
        FUNC1("Storage is too large\n");
        return E_FAIL;
    }

    size = stat.cbSize.QuadPart;
    data = FUNC9(size);
    if (!data)
        return E_OUTOFMEMORY;

    hr = FUNC5(stm, data, size, &read);
    if (FUNC2(hr) || read != size)
        goto done;

    hr = FUNC0(NULL, TRUE, &lockbytes);
    if (FUNC2(hr))
        goto done;

    FUNC8(&offset, sizeof(ULARGE_INTEGER));
    hr = FUNC4(lockbytes, offset, data, size, &read);
    if (FUNC2(hr) || read != size)
        goto done;

    hr = FUNC7(lockbytes, NULL,
                                    STGM_READWRITE | STGM_SHARE_DENY_NONE,
                                    NULL, 0, stg);
    if (FUNC2(hr))
        goto done;

done:
    FUNC10(data);
    if (lockbytes) FUNC3(lockbytes);
    return hr;
}