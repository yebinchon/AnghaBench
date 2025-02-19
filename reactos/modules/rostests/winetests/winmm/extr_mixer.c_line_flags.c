
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MIXERLINE_LINEF_ACTIVE ;
 int MIXERLINE_LINEF_DISCONNECTED ;
 int MIXERLINE_LINEF_SOURCE ;
 scalar_t__ TRUE ;
 int strcat (char*,char*) ;

__attribute__((used)) static const char * line_flags(DWORD fdwLine)
{
    static char flags[100];
    BOOL first=TRUE;
    flags[0]=0;
    if (fdwLine&MIXERLINE_LINEF_ACTIVE) {
        strcat(flags,"MIXERLINE_LINEF_ACTIVE");
        first=FALSE;
    }
    if (fdwLine&MIXERLINE_LINEF_DISCONNECTED) {
        if (!first)
            strcat(flags, "|");

        strcat(flags,"MIXERLINE_LINEF_DISCONNECTED");
        first=FALSE;
    }

    if (fdwLine&MIXERLINE_LINEF_SOURCE) {
        if (!first)
            strcat(flags, "|");

        strcat(flags,"MIXERLINE_LINEF_SOURCE");
    }

    return flags;
}
