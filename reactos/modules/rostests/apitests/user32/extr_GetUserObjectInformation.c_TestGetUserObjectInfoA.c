
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UserObjectFlags ;
typedef int USEROBJECTFLAGS ;
typedef int ULONG ;
typedef int * PVOID ;
typedef int * PCHAR ;
typedef int * HWINSTA ;
typedef int * HDESK ;


 int * AllocateGuarded (int) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOACCESS ;
 int FALSE ;
 int FreeGuarded (int *) ;
 int GetCurrentThreadId () ;
 int * GetProcessWindowStation () ;
 int * GetThreadDesktop (int ) ;
 int NOTSET ;
 int TRUE ;
 int TestUserObjectInfo (int *,int,int *,int,int ,int,int) ;
 int TestUserObjectInfoWithString (int *,int,int *,int,char*) ;
 int UOI_FLAGS ;
 int UOI_NAME ;
 int UOI_TYPE ;
 int skip (char*) ;

__attribute__((used)) static
void
TestGetUserObjectInfoA(void)
{
    USEROBJECTFLAGS UserObjectFlags;
    PCHAR Buffer;
    ULONG BufferSize = 64;
    HDESK Desktop;
    HWINSTA WinSta;

    Buffer = AllocateGuarded(BufferSize);

    TestUserObjectInfo(((void*)0), 5, ((void*)0), 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_FLAGS, ((void*)0), 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_FLAGS, (PVOID)1, 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_FLAGS, ((void*)0), 1, FALSE, ERROR_NOACCESS, NOTSET);
    TestUserObjectInfo(((void*)0), UOI_FLAGS, (PVOID)1, 1, FALSE, ERROR_NOACCESS, NOTSET);
    TestUserObjectInfo(((void*)0), UOI_FLAGS, &UserObjectFlags, sizeof(UserObjectFlags), FALSE, ERROR_INVALID_HANDLE, 0);

    TestUserObjectInfo(((void*)0), UOI_TYPE, ((void*)0), 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_TYPE, (PVOID)1, 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_TYPE, ((void*)0), 1, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_TYPE, (PVOID)1, 1, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_TYPE, Buffer, BufferSize, FALSE, ERROR_INVALID_HANDLE, 0);

    TestUserObjectInfo(((void*)0), UOI_NAME, ((void*)0), 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_NAME, (PVOID)1, 0, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_NAME, ((void*)0), 1, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_NAME, (PVOID)1, 1, FALSE, ERROR_INVALID_HANDLE, 0);
    TestUserObjectInfo(((void*)0), UOI_NAME, Buffer, BufferSize, FALSE, ERROR_INVALID_HANDLE, 0);

    Desktop = GetThreadDesktop(GetCurrentThreadId());
    if (!Desktop)
    {
        skip("Failed to get desktop handle\n");
        FreeGuarded(Buffer);
        return;
    }

    WinSta = GetProcessWindowStation();
    if (!WinSta)
    {
        skip("Failed to get winsta handle\n");
        FreeGuarded(Buffer);
        return;
    }

    TestUserObjectInfo(Desktop, 5, ((void*)0), 0, FALSE, ERROR_INVALID_PARAMETER, 0);
    TestUserObjectInfo(Desktop, UOI_FLAGS, ((void*)0), 0, FALSE, ERROR_INSUFFICIENT_BUFFER, sizeof(USEROBJECTFLAGS));
    TestUserObjectInfo(Desktop, UOI_FLAGS, (PVOID)1, 0, FALSE, ERROR_INSUFFICIENT_BUFFER, sizeof(USEROBJECTFLAGS));
    TestUserObjectInfo(Desktop, UOI_FLAGS, ((void*)0), 1, FALSE, ERROR_NOACCESS, NOTSET);
    TestUserObjectInfo(Desktop, UOI_FLAGS, (PVOID)1, 1, FALSE, ERROR_NOACCESS, NOTSET);
    TestUserObjectInfo(Desktop, UOI_FLAGS, &UserObjectFlags, sizeof(UserObjectFlags), TRUE, 0xdeadbeef, sizeof(USEROBJECTFLAGS));

    TestUserObjectInfoWithString(Desktop, UOI_TYPE, Buffer, BufferSize, "Desktop");
    TestUserObjectInfoWithString(Desktop, UOI_NAME, Buffer, BufferSize, "Default");

    TestUserObjectInfoWithString(WinSta, UOI_TYPE, Buffer, BufferSize, "WindowStation");
    TestUserObjectInfoWithString(WinSta, UOI_NAME, Buffer, BufferSize, "WinSta0");

    FreeGuarded(Buffer);


    BufferSize = sizeof("Desktop");
    Buffer = AllocateGuarded(BufferSize);
    TestUserObjectInfo(Desktop, UOI_TYPE, Buffer, BufferSize, TRUE, 0xdeadbeef, sizeof("Desktop"));
    TestUserObjectInfo(Desktop, UOI_TYPE, Buffer, BufferSize + 1, TRUE, 0xdeadbeef, sizeof("Desktop"));
    FreeGuarded(Buffer);
}
