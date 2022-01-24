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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  char* PWSTR ;
typedef  char* PWINSOCK_MAPPING ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GlobalHeap ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  WSAEINVAL ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

INT
FUNC10(
    PWSTR TransportName,
    PWINSOCK_MAPPING *Mapping)
{
    PWSTR               TransportKey;
    HKEY                KeyHandle;
    ULONG               MappingSize;
    LONG                Status;

    FUNC6("TransportName %ws\n", TransportName);

    /* Allocate a Buffer */
    TransportKey = FUNC1(GlobalHeap, 0, (54 + FUNC9(TransportName)) * sizeof(WCHAR));

    /* Check for error */
    if (TransportKey == NULL) {
        FUNC0("Buffer allocation failed\n");
        return WSAEINVAL;
    }

    /* Generate the right key name */
    FUNC8(TransportKey, L"System\\CurrentControlSet\\Services\\");
    FUNC7(TransportKey, TransportName);
    FUNC7(TransportKey, L"\\Parameters\\Winsock");

    /* Open the Key */
    Status = FUNC4(HKEY_LOCAL_MACHINE, TransportKey, 0, KEY_READ, &KeyHandle);

    /* We don't need the Transport Key anymore */
    FUNC2(GlobalHeap, 0, TransportKey);

    /* Check for error */
    if (Status) {
        FUNC0("Error reading transport mapping registry\n");
        return WSAEINVAL;
    }

    /* Find out how much space we need for the Mapping */
    Status = FUNC5(KeyHandle, L"Mapping", NULL, NULL, NULL, &MappingSize);

    /* Check for error */
    if (Status) {
        FUNC0("Error reading transport mapping registry\n");
        return WSAEINVAL;
    }

    /* Allocate Memory for the Mapping */
    *Mapping = FUNC1(GlobalHeap, 0, MappingSize);

    /* Check for error */
    if (*Mapping == NULL) {
        FUNC0("Buffer allocation failed\n");
        return WSAEINVAL;
    }

    /* Read the Mapping */
    Status = FUNC5(KeyHandle, L"Mapping", NULL, NULL, (LPBYTE)*Mapping, &MappingSize);

    /* Check for error */
    if (Status) {
        FUNC0("Error reading transport mapping registry\n");
        FUNC2(GlobalHeap, 0, *Mapping);
        return WSAEINVAL;
    }

    /* Close key and return */
    FUNC3(KeyHandle);
    return 0;
}