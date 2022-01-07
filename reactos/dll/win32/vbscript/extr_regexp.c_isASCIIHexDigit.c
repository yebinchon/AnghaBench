
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char UINT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL
isASCIIHexDigit(WCHAR c, UINT *digit)
{
    UINT cv = c;

    if (cv < '0')
        return FALSE;
    if (cv <= '9') {
        *digit = cv - '0';
        return TRUE;
    }
    cv |= 0x20;
    if (cv >= 'a' && cv <= 'f') {
        *digit = cv - 'a' + 10;
        return TRUE;
    }
    return FALSE;
}
