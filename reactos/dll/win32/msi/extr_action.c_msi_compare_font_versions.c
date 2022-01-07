
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 int msi_parse_version_string (int const*,scalar_t__*,int *) ;

int msi_compare_font_versions( const WCHAR *ver1, const WCHAR *ver2 )
{
    DWORD ms1, ms2;

    msi_parse_version_string( ver1, &ms1, ((void*)0) );
    msi_parse_version_string( ver2, &ms2, ((void*)0) );

    if (ms1 > ms2) return 1;
    else if (ms1 < ms2) return -1;
    return 0;
}
