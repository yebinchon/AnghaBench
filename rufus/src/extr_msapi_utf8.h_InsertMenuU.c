
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT_PTR ;
typedef int UINT ;
typedef int HMENU ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int InsertMenuW (int ,int ,int ,int ,int ) ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wlpNewItem ;

__attribute__((used)) static __inline BOOL InsertMenuU(HMENU hMenu, UINT uPosition, UINT uFlags, UINT_PTR uIDNewItem, const char* lpNewItem)
{
 BOOL ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpNewItem);
 ret = InsertMenuW(hMenu, uPosition, uFlags, uIDNewItem, wlpNewItem);
 err = GetLastError();
 wfree(lpNewItem);
 SetLastError(err);
 return ret;
}
