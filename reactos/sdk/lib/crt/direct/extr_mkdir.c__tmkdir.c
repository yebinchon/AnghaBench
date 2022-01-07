
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;


 int CreateDirectory (int const*,int *) ;
 int GetLastError () ;
 int _dosmaperr (int ) ;

int _tmkdir(const _TCHAR* _path)
{
    if (!CreateDirectory(_path, ((void*)0))) {
     _dosmaperr(GetLastError());
        return -1;
 }
    return 0;
}
