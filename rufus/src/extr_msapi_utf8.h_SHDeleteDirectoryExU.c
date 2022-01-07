
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_7; int * member_6; int member_5; int member_4; int * member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SHFILEOPSTRUCTW ;
typedef int HWND ;
typedef int FILEOP_FLAGS ;


 int FALSE ;
 int FO_DELETE ;
 int SHFileOperationW (TYPE_1__*) ;
 int strlen (char const*) ;
 int utf8_to_wchar_no_alloc (char const*,int ,int) ;
 int walloc (char const*,size_t) ;
 int wfree (char const*) ;
 int wpszPath ;

__attribute__((used)) static __inline int SHDeleteDirectoryExU(HWND hwnd, const char* pszPath, FILEOP_FLAGS fFlags)
{
 int ret;


 size_t wpszPath_len = strlen(pszPath) + 2;

 walloc(pszPath, wpszPath_len);
 SHFILEOPSTRUCTW shfo = { hwnd, FO_DELETE, wpszPath, ((void*)0), fFlags, FALSE, ((void*)0), ((void*)0) };
 utf8_to_wchar_no_alloc(pszPath, wpszPath, (int)wpszPath_len);

 ret = SHFileOperationW(&shfo);
 wfree(pszPath);
 return ret;
}
