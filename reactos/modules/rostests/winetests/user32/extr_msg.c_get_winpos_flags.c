
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int DUMP (int ) ;
 int SWP_ASYNCWINDOWPOS ;
 int SWP_DEFERERASE ;
 int SWP_FRAMECHANGED ;
 int SWP_HIDEWINDOW ;
 int SWP_NOACTIVATE ;
 int SWP_NOCLIENTMOVE ;
 int SWP_NOCLIENTSIZE ;
 int SWP_NOCOPYBITS ;
 int SWP_NOMOVE ;
 int SWP_NOOWNERZORDER ;
 int SWP_NOREDRAW ;
 int SWP_NOSENDCHANGING ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SWP_SHOWWINDOW ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static const char *get_winpos_flags(UINT flags)
{
    static char buffer[300];

    buffer[0] = 0;

    do { if (flags & SWP_SHOWWINDOW) { strcat( buffer, "|" "SWP_SHOWWINDOW" ); flags &= ~SWP_SHOWWINDOW; } } while(0);
    do { if (flags & SWP_HIDEWINDOW) { strcat( buffer, "|" "SWP_HIDEWINDOW" ); flags &= ~SWP_HIDEWINDOW; } } while(0);
    do { if (flags & SWP_NOACTIVATE) { strcat( buffer, "|" "SWP_NOACTIVATE" ); flags &= ~SWP_NOACTIVATE; } } while(0);
    do { if (flags & SWP_FRAMECHANGED) { strcat( buffer, "|" "SWP_FRAMECHANGED" ); flags &= ~SWP_FRAMECHANGED; } } while(0);
    do { if (flags & SWP_NOCOPYBITS) { strcat( buffer, "|" "SWP_NOCOPYBITS" ); flags &= ~SWP_NOCOPYBITS; } } while(0);
    do { if (flags & SWP_NOOWNERZORDER) { strcat( buffer, "|" "SWP_NOOWNERZORDER" ); flags &= ~SWP_NOOWNERZORDER; } } while(0);
    do { if (flags & SWP_NOSENDCHANGING) { strcat( buffer, "|" "SWP_NOSENDCHANGING" ); flags &= ~SWP_NOSENDCHANGING; } } while(0);
    do { if (flags & SWP_DEFERERASE) { strcat( buffer, "|" "SWP_DEFERERASE" ); flags &= ~SWP_DEFERERASE; } } while(0);
    do { if (flags & SWP_ASYNCWINDOWPOS) { strcat( buffer, "|" "SWP_ASYNCWINDOWPOS" ); flags &= ~SWP_ASYNCWINDOWPOS; } } while(0);
    do { if (flags & SWP_NOZORDER) { strcat( buffer, "|" "SWP_NOZORDER" ); flags &= ~SWP_NOZORDER; } } while(0);
    do { if (flags & SWP_NOREDRAW) { strcat( buffer, "|" "SWP_NOREDRAW" ); flags &= ~SWP_NOREDRAW; } } while(0);
    do { if (flags & SWP_NOSIZE) { strcat( buffer, "|" "SWP_NOSIZE" ); flags &= ~SWP_NOSIZE; } } while(0);
    do { if (flags & SWP_NOMOVE) { strcat( buffer, "|" "SWP_NOMOVE" ); flags &= ~SWP_NOMOVE; } } while(0);
    do { if (flags & SWP_NOCLIENTSIZE) { strcat( buffer, "|" "SWP_NOCLIENTSIZE" ); flags &= ~SWP_NOCLIENTSIZE; } } while(0);
    do { if (flags & SWP_NOCLIENTMOVE) { strcat( buffer, "|" "SWP_NOCLIENTMOVE" ); flags &= ~SWP_NOCLIENTMOVE; } } while(0);
    if (flags) sprintf(buffer + strlen(buffer),"|0x%04x", flags);
    return buffer + 1;

}
