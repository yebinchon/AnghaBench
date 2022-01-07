
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int WHDR_BEGINLOOP ;
 int WHDR_DONE ;
 int WHDR_ENDLOOP ;
 int WHDR_INQUEUE ;
 int WHDR_MASK ;
 int WHDR_PREPARED ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static const char * wave_header_flags(DWORD flags)
{

    static char msg[1024];
    BOOL first = TRUE;
    msg[0] = 0;
    if (flags & WHDR_BEGINLOOP) {
        strcat(msg, "WHDR_BEGINLOOP");
        first = FALSE;
    }
    if (flags & WHDR_DONE) {
        if (!first) strcat(msg, " ");
        strcat(msg, "WHDR_DONE");
        first = FALSE;
    }
    if (flags & WHDR_ENDLOOP) {
        if (!first) strcat(msg, " ");
        strcat(msg, "WHDR_ENDLOOP");
        first = FALSE;
    }
    if (flags & WHDR_INQUEUE) {
        if (!first) strcat(msg, " ");
        strcat(msg, "WHDR_INQUEUE");
        first = FALSE;
    }
    if (flags & WHDR_PREPARED) {
        if (!first) strcat(msg, " ");
        strcat(msg, "WHDR_PREPARED");
        first = FALSE;
    }
    if (flags & ~(WHDR_BEGINLOOP|WHDR_DONE|WHDR_ENDLOOP|WHDR_INQUEUE|WHDR_PREPARED)) {
        char temp[32];
        sprintf(temp, "UNKNOWN(0x%08x)", flags & ~(WHDR_BEGINLOOP|WHDR_DONE|WHDR_ENDLOOP|WHDR_INQUEUE|WHDR_PREPARED));
        if (!first) strcat(msg, " ");
        strcat(msg, temp);
    }
    return msg;
}
