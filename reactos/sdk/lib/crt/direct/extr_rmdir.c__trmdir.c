
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;


 int GetLastError () ;
 int RemoveDirectory (int const*) ;
 int _dosmaperr (int ) ;

int _trmdir(const _TCHAR* _path)
{
    if (!RemoveDirectory(_path)) {
     _dosmaperr(GetLastError());
        return -1;
    }
    return 0;
}
