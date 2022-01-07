
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;
typedef int WCHAR ;


 int GetCurrentDirectoryW (int,int*) ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetCurrentDirectory (int const*) ;
 int SetEnvironmentVariableW (int*,int*) ;
 int _dosmaperr (int ) ;
 int towupper (int) ;

int _tchdir(const _TCHAR* _path)
{
    WCHAR newdir[MAX_PATH];

    if (!SetCurrentDirectory(_path))
    {
        _dosmaperr(_path ? GetLastError() : 0);
        return -1;
    }


    if (GetCurrentDirectoryW(MAX_PATH, newdir) >= 2)
    {
        if (newdir[1] == L':')
        {
            WCHAR envvar[4] = { L'=', towupper(newdir[0]), L':', L'\0' };
            SetEnvironmentVariableW(envvar, newdir);
        }
    }

    return 0;
}
