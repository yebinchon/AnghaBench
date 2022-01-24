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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ HMMIO ;

/* Variables and functions */
 int MMIO_ALLOCBUF ; 
 int MMIO_DENYWRITE ; 
 int MMIO_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HMMIO	FUNC2(LPCWSTR lpszName)
{
    HMMIO       ret;
    WCHAR       buf[256];
    LPWSTR      dummy;

    ret = FUNC1((LPWSTR)lpszName, NULL,
                    MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);
    if (ret != 0) return ret;
    if (FUNC0(NULL, lpszName, NULL, sizeof(buf)/sizeof(buf[0]), buf, &dummy))
    {
        return FUNC1(buf, NULL,
                         MMIO_ALLOCBUF | MMIO_READ | MMIO_DENYWRITE);
    }
    return 0;
}