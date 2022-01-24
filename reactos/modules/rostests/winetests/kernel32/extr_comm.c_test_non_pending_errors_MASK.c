#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ByteSize; } ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DCB ;

/* Variables and functions */
 int CE_MODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    HANDLE hcom;
    DCB dcb;
    DWORD err;

    hcom = FUNC5(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    FUNC4(FUNC2(hcom, &dcb), "GetCommState failed\n");
    dcb.ByteSize = 255; /* likely bogus */
    FUNC4(!FUNC3(hcom, &dcb), "SetCommState should have failed\n");
    FUNC4(FUNC0(hcom, &err, NULL), "ClearCommError should succeed\n");
    FUNC4(!(err & CE_MODE), "ClearCommError shouldn't set CE_MODE byte in this case (%x)\n", err);

    FUNC1(hcom);
}