
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int osvi ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int member_0; int dwMinorVersion; int dwMajorVersion; int member_7; int member_6; TYPE_1__ member_5; int member_4; int member_3; int member_2; int member_1; } ;
typedef TYPE_2__ OSVERSIONINFOEXW ;
typedef int DWORDLONG ;
typedef int BOOL ;


 scalar_t__ FALSE ;
 int HIBYTE (int ) ;
 int LOBYTE (int ) ;
 int VER_GREATER_EQUAL ;
 int VER_MAJORVERSION ;
 int VER_MINORVERSION ;
 int VER_SERVICEPACKMAJOR ;
 int VerSetConditionMask (int ,int,int ) ;
 scalar_t__ VerifyVersionInfoW (TYPE_2__*,int,int const) ;
 int _WIN32_WINNT_WIN8 ;

__attribute__((used)) static BOOL
IsWindows8OrGreater()
{
    OSVERSIONINFOEXW osvi = { sizeof(osvi), 0, 0, 0, 0, {0}, 0, 0 };
    DWORDLONG const dwlConditionMask = VerSetConditionMask(VerSetConditionMask(
        VerSetConditionMask(0, VER_MAJORVERSION, VER_GREATER_EQUAL),
            VER_MINORVERSION, VER_GREATER_EQUAL),
            VER_SERVICEPACKMAJOR, VER_GREATER_EQUAL);

    osvi.dwMajorVersion = HIBYTE(_WIN32_WINNT_WIN8);
    osvi.dwMinorVersion = LOBYTE(_WIN32_WINNT_WIN8);

    return VerifyVersionInfoW(&osvi, VER_MAJORVERSION | VER_MINORVERSION | VER_SERVICEPACKMAJOR, dwlConditionMask) != FALSE;
}
