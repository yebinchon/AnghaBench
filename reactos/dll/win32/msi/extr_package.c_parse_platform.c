
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum platform { ____Placeholder_platform } platform ;
typedef int WCHAR ;


 int PLATFORM_ARM ;
 int PLATFORM_INTEL ;
 int PLATFORM_INTEL64 ;
 int PLATFORM_UNKNOWN ;
 int PLATFORM_X64 ;
 int strcmpW (int const*,int ) ;
 int szAMD64 ;
 int szARM ;
 int szIntel ;
 int szIntel64 ;
 int szX64 ;

__attribute__((used)) static enum platform parse_platform( const WCHAR *str )
{
    if (!str[0] || !strcmpW( str, szIntel )) return PLATFORM_INTEL;
    else if (!strcmpW( str, szIntel64 )) return PLATFORM_INTEL64;
    else if (!strcmpW( str, szX64 ) || !strcmpW( str, szAMD64 )) return PLATFORM_X64;
    else if (!strcmpW( str, szARM )) return PLATFORM_ARM;
    return PLATFORM_UNKNOWN;
}
