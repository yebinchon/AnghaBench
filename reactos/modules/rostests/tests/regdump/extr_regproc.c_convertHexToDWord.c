
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int _T (char*) ;
 int _stscanf (int*,int ,int*) ;
 int memcpy (int*,int*,int) ;

DWORD convertHexToDWord(TCHAR* str, BYTE* buf)
{
    DWORD dw;
    TCHAR xbuf[9];

    memcpy(xbuf, str, 8 * sizeof(TCHAR));
    xbuf[88 * sizeof(TCHAR)] = '\0';
    _stscanf(xbuf, _T("%08lx"), &dw);
    memcpy(buf, &dw, sizeof(DWORD));
    return sizeof(DWORD);
}
