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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GlobalHeap ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  WSAEINVAL ; 

INT
FUNC7(
    PWSTR *TransportList)
{
    ULONG	TransportListSize;
    HKEY	KeyHandle;
    LONG	Status;

    FUNC6("Called\n");

    /* Open the Transports Key */
    Status = FUNC4 (HKEY_LOCAL_MACHINE,
                            L"SYSTEM\\CurrentControlSet\\Services\\Winsock\\Parameters",
                            0,
                            KEY_READ,
                            &KeyHandle);

    /* Check for error */
    if (Status) {
        FUNC0("Error reading transport list registry\n");
        return WSAEINVAL;
    }

    /* Get the Transport List Size */
    Status = FUNC5(KeyHandle,
                              L"Transports",
                              NULL,
                              NULL,
                              NULL,
                              &TransportListSize);

    /* Check for error */
    if (Status) {
        FUNC0("Error reading transport list registry\n");
        return WSAEINVAL;
    }

    /* Allocate Memory for the Transport List */
    *TransportList = FUNC1(GlobalHeap, 0, TransportListSize);

    /* Check for error */
    if (*TransportList == NULL) {
        FUNC0("Buffer allocation failed\n");
        return WSAEINVAL;
    }

    /* Get the Transports */
    Status = FUNC5 (KeyHandle,
                               L"Transports",
                               NULL,
                               NULL,
                               (LPBYTE)*TransportList,
                               &TransportListSize);

    /* Check for error */
    if (Status) {
        FUNC0("Error reading transport list registry\n");
        FUNC2(GlobalHeap, 0, *TransportList);
        return WSAEINVAL;
    }

    /* Close key and return */
    FUNC3(KeyHandle);
    return 0;
}