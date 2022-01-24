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
typedef  int /*<<< orphan*/  UserObjectFlags ;
typedef  int /*<<< orphan*/  USEROBJECTFLAGS ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int /*<<< orphan*/ * HWINSTA ;
typedef  int /*<<< orphan*/ * HDESK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_HANDLE ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_NOACCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int NOTSET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,char*) ; 
 int UOI_FLAGS ; 
 int UOI_NAME ; 
 int UOI_TYPE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static
void
FUNC8(void)
{
    USEROBJECTFLAGS UserObjectFlags;
    PCHAR Buffer;
    ULONG BufferSize = 64;
    HDESK Desktop;
    HWINSTA WinSta;

    Buffer = FUNC0(BufferSize);

    FUNC5(NULL,    5,         NULL,             0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_FLAGS, NULL,             0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_FLAGS, (PVOID)1,         0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_FLAGS, NULL,             1,                       FALSE, ERROR_NOACCESS,            NOTSET);
    FUNC5(NULL,    UOI_FLAGS, (PVOID)1,         1,                       FALSE, ERROR_NOACCESS,            NOTSET);
    FUNC5(NULL,    UOI_FLAGS, &UserObjectFlags, sizeof(UserObjectFlags), FALSE, ERROR_INVALID_HANDLE,      0);

    FUNC5(NULL,    UOI_TYPE,  NULL,             0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_TYPE,  (PVOID)1,         0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_TYPE,  NULL,             1,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_TYPE,  (PVOID)1,         1,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_TYPE,  Buffer,           BufferSize,              FALSE, ERROR_INVALID_HANDLE,      0);

    FUNC5(NULL,    UOI_NAME,  NULL,             0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_NAME,  (PVOID)1,         0,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_NAME,  NULL,             1,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_NAME,  (PVOID)1,         1,                       FALSE, ERROR_INVALID_HANDLE,      0);
    FUNC5(NULL,    UOI_NAME,  Buffer,           BufferSize,              FALSE, ERROR_INVALID_HANDLE,      0);

    Desktop = FUNC4(FUNC2());
    if (!Desktop)
    {
        FUNC7("Failed to get desktop handle\n");
        FUNC1(Buffer);
        return;
    }

    WinSta = FUNC3();
    if (!WinSta)
    {
        FUNC7("Failed to get winsta handle\n");
        FUNC1(Buffer);
        return;
    }

    FUNC5(Desktop, 5,         NULL,             0,                       FALSE, ERROR_INVALID_PARAMETER,   0);
    FUNC5(Desktop, UOI_FLAGS, NULL,             0,                       FALSE, ERROR_INSUFFICIENT_BUFFER, sizeof(USEROBJECTFLAGS));
    FUNC5(Desktop, UOI_FLAGS, (PVOID)1,         0,                       FALSE, ERROR_INSUFFICIENT_BUFFER, sizeof(USEROBJECTFLAGS));
    FUNC5(Desktop, UOI_FLAGS, NULL,             1,                       FALSE, ERROR_NOACCESS,            NOTSET);
    FUNC5(Desktop, UOI_FLAGS, (PVOID)1,         1,                       FALSE, ERROR_NOACCESS,            NOTSET);
    FUNC5(Desktop, UOI_FLAGS, &UserObjectFlags, sizeof(UserObjectFlags), TRUE,  0xdeadbeef,                sizeof(USEROBJECTFLAGS));

    FUNC6(Desktop, UOI_TYPE, Buffer, BufferSize, "Desktop");
    FUNC6(Desktop, UOI_NAME, Buffer, BufferSize, "Default");

    FUNC6(WinSta,  UOI_TYPE, Buffer, BufferSize, "WindowStation");
    FUNC6(WinSta,  UOI_NAME, Buffer, BufferSize, "WinSta0");

    FUNC1(Buffer);

    /* Make sure nothing behind the needed buffer is touched */
    BufferSize = sizeof("Desktop");
    Buffer = FUNC0(BufferSize);
    FUNC5(Desktop, UOI_TYPE,  Buffer,           BufferSize,              TRUE,  0xdeadbeef,                sizeof("Desktop"));
    FUNC5(Desktop, UOI_TYPE,  Buffer,           BufferSize + 1,          TRUE,  0xdeadbeef,                sizeof("Desktop"));
    FUNC1(Buffer);
}