
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FAIL ;
 scalar_t__ GetACP () ;
 scalar_t__ GetLastError () ;
 int OK ;
 long _chmod (int *,long) ;
 long _wchmod (int *,long) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;
 int win32_set_archive (int *) ;

int
mch_setperm(char_u *name, long perm)
{
    long n = -1;
 n = _chmod(name, perm);
    if (n == -1)
 return FAIL;

    win32_set_archive(name);

    return OK;
}
