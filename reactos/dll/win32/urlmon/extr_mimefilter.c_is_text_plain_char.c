
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline BOOL is_text_plain_char(BYTE b)
{
    if(b < 0x20 && b != '\n' && b != '\r' && b != '\t')
        return FALSE;
    return TRUE;
}
