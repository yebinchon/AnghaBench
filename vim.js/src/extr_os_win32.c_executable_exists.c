
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ GetACP () ;
 int GetFileAttributesW (int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ SearchPath (int *,char*,int *,int,char*,char**) ;
 scalar_t__ SearchPathW (int *,int *,int *,int,int *,int **) ;
 int TRUE ;
 int _MAX_PATH ;
 int enc_codepage ;
 int * enc_to_utf16 (char*,int *) ;
 scalar_t__ mch_isdir (char*) ;
 int vim_free (int *) ;

__attribute__((used)) static int
executable_exists(char *name)
{
    char *dum;
    char fname[_MAX_PATH];
    if (SearchPath(((void*)0), name, ((void*)0), _MAX_PATH, fname, &dum) == 0)
 return FALSE;
    if (mch_isdir(fname))
 return FALSE;
    return TRUE;
}
