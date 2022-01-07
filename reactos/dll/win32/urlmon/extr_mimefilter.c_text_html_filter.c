
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL text_html_filter(const BYTE *b, DWORD size)
{
    if(size < 6)
        return FALSE;

    if((b[0] == '<'
                && (b[1] == 'h' || b[1] == 'H')
                && (b[2] == 't' || b[2] == 'T')
                && (b[3] == 'm' || b[3] == 'M')
                && (b[4] == 'l' || b[4] == 'L'))
            || (b[0] == '<'
                && (b[1] == 'h' || b[1] == 'H')
                && (b[2] == 'e' || b[2] == 'E')
                && (b[3] == 'a' || b[3] == 'A')
                && (b[4] == 'd' || b[4] == 'D'))
            || (b[0] == '<'
                && (b[1] == 'b' || b[1] == 'B')
                && (b[2] == 'o' || b[2] == 'O')
                && (b[3] == 'd' || b[3] == 'D')
                && (b[4] == 'y' || b[4] == 'Y'))) return TRUE;

    return FALSE;
}
