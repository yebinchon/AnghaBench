
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int dwBuildNumber; int dwMinorVersion; int dwMajorVersion; } ;
typedef TYPE_1__ OSVERSIONINFOEXW ;


 char* heap_alloc (int) ;
 int sprintfW (char*,char const*,int ,int ,int ) ;

__attribute__((used)) static WCHAR *get_osversion( OSVERSIONINFOEXW *ver )
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','%','u',0};
    WCHAR *ret = heap_alloc( 33 * sizeof(WCHAR) );
    if (ret) sprintfW( ret, fmtW, ver->dwMajorVersion, ver->dwMinorVersion, ver->dwBuildNumber );
    return ret;
}
