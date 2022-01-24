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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  ReasonToFailBuffer ; 
 int /*<<< orphan*/  SimultaneousErrors ; 
 scalar_t__ TEXT_ERROR_BUFFER_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TrappedError ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text)
{
    TrappedError = TRUE;
    SimultaneousErrors++;
    FUNC1(ReasonToFailBuffer, Text, TEXT_ERROR_BUFFER_SIZE-1);

    FUNC0(ContextID);
    FUNC0(ErrorCode);
}