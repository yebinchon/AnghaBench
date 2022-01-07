
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 int FAIL ;
 scalar_t__ GetACP () ;
 scalar_t__ GetCurrentDirectory (int,int *) ;
 scalar_t__ GetCurrentDirectoryW (int ,int *) ;
 int OK ;
 int _MAX_PATH ;
 int enc_codepage ;
 int * utf16_to_enc (int *,int *) ;
 int vim_free (int *) ;
 int vim_strncpy (int *,int *,int) ;

int
mch_dirname(
    char_u *buf,
    int len)
{
    return (GetCurrentDirectory(len, buf) != 0 ? OK : FAIL);
}
