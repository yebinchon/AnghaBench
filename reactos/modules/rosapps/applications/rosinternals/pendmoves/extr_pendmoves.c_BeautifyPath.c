
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef int DWORD ;


 scalar_t__ _T (char) ;

__attribute__((used)) static
TCHAR *
BeautifyPath(TCHAR * Path, DWORD * Len)
{
    DWORD LocalLen = *Len;




    if (LocalLen > 1)
    {
        if (Path[0] == _T('!'))
        {
            ++Path;
            --LocalLen;
        }
    }


    if (LocalLen > 4)
    {
        if (Path[0] == _T('\\') && Path[1] == _T('?') &&
            Path[2] == _T('?') && Path[3] == _T('\\'))
        {
            Path += 4;
            LocalLen -= 4;
        }
    }


    *Len = LocalLen;
    return Path;
}
