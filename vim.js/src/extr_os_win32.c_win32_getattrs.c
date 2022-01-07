
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ GetACP () ;
 int GetFileAttributes (char*) ;
 int GetFileAttributesW (int *) ;
 scalar_t__ GetLastError () ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;

__attribute__((used)) static int
win32_getattrs(char_u *name)
{
    int attr;
 attr = GetFileAttributes((char *)name);



    return attr;
}
