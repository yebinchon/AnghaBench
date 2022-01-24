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
typedef  int /*<<< orphan*/  GpRegion ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ InsufficientBuffer ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static DWORD FUNC6(GpRegion *region)
{
    DWORD *data;
    DWORD size;
    DWORD result;
    DWORD status;
    status = FUNC3(region, &size);
    FUNC4(Ok, status);
    data = FUNC0(size);
    status = FUNC2(region, (BYTE*)data, size, NULL);
    FUNC5(status == Ok || status == InsufficientBuffer, "unexpected status 0x%x\n", status);
    result = data[4];
    FUNC1(data);
    return result;
}