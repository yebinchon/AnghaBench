
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
typedef void* WORD ;
typedef int ULONGLONG ;
struct TYPE_3__ {int member_0; void* dwMinorVersion; void* dwMajorVersion; } ;
typedef TYPE_1__ OSVERSIONINFOEXW ;
typedef int BOOL ;


 int VER_GREATER_EQUAL ;
 int VER_MAJORVERSION ;
 int VER_MINORVERSION ;
 int VER_SET_CONDITION (int ,int,int ) ;
 int VerifyVersionInfoW (TYPE_1__*,int,int ) ;

__attribute__((used)) static BOOL winver_equal_or_newer(WORD major, WORD minor)
{
    OSVERSIONINFOEXW info = {sizeof(info)};
    ULONGLONG mask = 0;

    info.dwMajorVersion = major;
    info.dwMinorVersion = minor;

    VER_SET_CONDITION(mask, VER_MAJORVERSION, VER_GREATER_EQUAL);
    VER_SET_CONDITION(mask, VER_MINORVERSION, VER_GREATER_EQUAL);

    return VerifyVersionInfoW(&info, VER_MAJORVERSION | VER_MINORVERSION, mask);
}
