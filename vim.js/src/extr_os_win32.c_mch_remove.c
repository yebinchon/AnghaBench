
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ DeleteFile (int *) ;
 scalar_t__ DeleteFileW (int *) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ GetACP () ;
 scalar_t__ GetLastError () ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;
 int win32_setattrs (int *,int ) ;

int
mch_remove(char_u *name)
{





    win32_setattrs(name, FILE_ATTRIBUTE_NORMAL);
    return DeleteFile(name) ? 0 : -1;
}
