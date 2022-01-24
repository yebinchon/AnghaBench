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
typedef  int WCHAR ;
typedef  size_t ULONG ;
typedef  size_t UINT ;
typedef  int BOOLEAN ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 scalar_t__ ERROR_CANT_ACCESS_DOMAIN_INFO ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NONE_MAPPED ; 
 scalar_t__ ERROR_NO_SUCH_USER ; 
 scalar_t__ FUNC1 () ; 
#define  NameUnknown 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ WSAHOST_NOT_FOUND ; 
 scalar_t__ FUNC3 (int) ; 
 int* formats ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (int,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static void FUNC8(void)
{
    WCHAR nameW[256];
    ULONG size;
    BOOLEAN rc;
    UINT i;

    for (i = 0; i < FUNC0(formats); i++) {
        size = 0;
        FUNC2(0xdeadbeef);
        rc = FUNC5(formats[i], NULL, &size);
        FUNC4(!rc || FUNC3(rc) /* win10 */, "GetComputerObjectName(%u) should fail\n", formats[i]);
        switch (formats[i])
        {
        case NameUnknown:
            FUNC4(FUNC1() == ERROR_INVALID_PARAMETER, "%u: got %u\n", formats[i], FUNC1());
            break;
        default:
            FUNC4(FUNC1() == ERROR_NONE_MAPPED ||
               FUNC1() == ERROR_NO_SUCH_USER ||
               FUNC1() == ERROR_CANT_ACCESS_DOMAIN_INFO ||
               FUNC1() == WSAHOST_NOT_FOUND ||
               FUNC1() == ERROR_INSUFFICIENT_BUFFER,
               "%u: got %u\n", formats[i], FUNC1());
            break;
        }

        if (FUNC1() != ERROR_INSUFFICIENT_BUFFER) continue;

        size = FUNC0(nameW);
        FUNC2(0xdeadbeef);
        rc = FUNC5(formats[i], nameW, &size);
        switch (formats[i])
        {
        case NameUnknown:
            FUNC4(!rc, "GetComputerObjectName(%u) should fail\n", formats[i]);
            FUNC4(FUNC1() == ERROR_INVALID_PARAMETER, "%u: got %u\n", formats[i], FUNC1());
            break;
        default:
            FUNC4(rc, "GetComputerObjectName(%u) error %u\n", formats[i], FUNC1());
            FUNC6("GetComputerObjectName(%u) returned %s\n", formats[i], FUNC7(nameW));
            break;
        }
    }
}