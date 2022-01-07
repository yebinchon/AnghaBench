
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ dwFileVersionMS; scalar_t__ dwFileVersionLS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef scalar_t__ DWORD ;


 int msi_parse_version_string (int const*,scalar_t__*,scalar_t__*) ;

int msi_compare_file_versions( VS_FIXEDFILEINFO *fi, const WCHAR *version )
{
    DWORD ms, ls;

    msi_parse_version_string( version, &ms, &ls );

    if (fi->dwFileVersionMS > ms) return 1;
    else if (fi->dwFileVersionMS < ms) return -1;
    else if (fi->dwFileVersionLS > ls) return 1;
    else if (fi->dwFileVersionLS < ls) return -1;
    return 0;
}
