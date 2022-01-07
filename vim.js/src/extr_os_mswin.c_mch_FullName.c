
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int short_u ;
typedef scalar_t__ char_u ;
typedef scalar_t__ WCHAR ;


 int FAIL ;
 scalar_t__ GetACP () ;
 int MAX_PATH ;
 scalar_t__ NUL ;
 int OK ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int * _fullpath (scalar_t__*,scalar_t__*,int) ;
 int * _wfullpath (scalar_t__*,scalar_t__*,int) ;
 int enc_codepage ;
 scalar_t__* enc_to_utf16 (scalar_t__*,int *) ;
 int fname_case (scalar_t__*,int) ;
 scalar_t__ g_PlatformId ;
 int mch_dirname (scalar_t__*,int) ;
 int slash_adjust (scalar_t__*) ;
 scalar_t__* utf16_to_enc (int *,int *) ;
 int vim_free (scalar_t__*) ;
 int vim_strncpy (scalar_t__*,scalar_t__*,int) ;

int
mch_FullName(
    char_u *fname,
    char_u *buf,
    int len,
    int force)
{
    int nResult = FAIL;






    {
 {
     if (_fullpath(buf, fname, len - 1) == ((void*)0))
     {

  vim_strncpy(buf, fname, len - 1);
     }
     else
  nResult = OK;
 }
    }




    slash_adjust(buf);


    return nResult;
}
