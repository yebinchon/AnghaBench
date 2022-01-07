
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int is_text_plain_char (int const) ;

__attribute__((used)) static BOOL text_plain_filter(const BYTE *b, DWORD size)
{
    const BYTE *ptr;

    for(ptr = b; ptr < b+size-1; ptr++) {
        if(!is_text_plain_char(*ptr))
            return FALSE;
    }

    return TRUE;
}
