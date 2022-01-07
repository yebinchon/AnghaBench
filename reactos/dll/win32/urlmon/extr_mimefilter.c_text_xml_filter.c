
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL text_xml_filter(const BYTE *b, DWORD size)
{
    if(size < 7)
        return FALSE;

    if(b[0] == '<' && b[1] == '?'
            && (b[2] == 'x' || b[2] == 'X')
            && (b[3] == 'm' || b[3] == 'M')
            && (b[4] == 'l' || b[4] == 'L')
            && b[5] == ' ') return TRUE;

    return FALSE;
}
