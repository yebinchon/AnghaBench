
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_5__ {scalar_t__ dwFileAttributes; scalar_t__ dwReserved0; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
struct TYPE_6__ {scalar_t__ dwFileAttributes; scalar_t__ dwReserved0; } ;
typedef TYPE_2__ WIN32_FIND_DATAA ;
typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FALSE ;
 scalar_t__ FILE_ATTRIBUTE_REPARSE_POINT ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (int *,TYPE_2__*) ;
 scalar_t__ FindFirstFileW (int *,TYPE_1__*) ;
 scalar_t__ GetACP () ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IO_REPARSE_TAG_SYMLINK ;
 int TRUE ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;

int
mch_is_symbolic_link(char_u *fname)
{
    HANDLE hFind;
    int res = FALSE;
    WIN32_FIND_DATAA findDataA;
    DWORD fileFlags = 0, reparseTag = 0;
    {
 hFind = FindFirstFile(fname, &findDataA);
 if (hFind != INVALID_HANDLE_VALUE)
 {
     fileFlags = findDataA.dwFileAttributes;
     reparseTag = findDataA.dwReserved0;
 }
    }

    if (hFind != INVALID_HANDLE_VALUE)
 FindClose(hFind);

    if ((fileFlags & FILE_ATTRIBUTE_REPARSE_POINT)
     && reparseTag == IO_REPARSE_TAG_SYMLINK)
 res = TRUE;

    return res;
}
