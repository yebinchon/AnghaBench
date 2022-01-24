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
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__* PSIZE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static
PVOID
FUNC5(
    PVOID OldUserBuffer,
    SIZE_T NewDataSize)
{
    PVOID NewUserBuffer;
    SIZE_T OldDataSize;

    OldDataSize = ((PSIZE_T)OldUserBuffer)[-1];
    FUNC0(OldDataSize != 0);

    NewUserBuffer = FUNC1(NewDataSize);
    FUNC0(((PSIZE_T)OldUserBuffer)[-1] == OldDataSize);
    FUNC3(NewUserBuffer, OldUserBuffer, FUNC4(OldDataSize, NewDataSize));
    FUNC0(((PSIZE_T)OldUserBuffer)[-1] == OldDataSize);
    FUNC2(OldUserBuffer);
    return NewUserBuffer;
}