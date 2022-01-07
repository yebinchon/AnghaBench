
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WPARAM ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int CB_ERR ;
 int CB_GETLBTEXT ;
 int CB_GETLBTEXTLEN ;
 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetLastError (int ) ;
 scalar_t__ calloc (int,int) ;
 int wchar_to_utf8_no_alloc (int *,char*,int) ;
 int wfree (char*) ;

__attribute__((used)) static __inline int ComboBox_GetLBTextU(HWND hCtrl, int index, char* lpString)
{
 int size;
 DWORD err = ERROR_INVALID_DATA;
 wchar_t* wlpString;
 if (lpString == ((void*)0))
  return CB_ERR;
 size = (int)SendMessageW(hCtrl, CB_GETLBTEXTLEN, (WPARAM)index, (LPARAM)0);
 if (size < 0)
  return size;
 wlpString = (wchar_t*)calloc(size+1, sizeof(wchar_t));
 size = (int)SendMessageW(hCtrl, CB_GETLBTEXT, (WPARAM)index, (LPARAM)wlpString);
 err = GetLastError();
 if (size > 0)
  wchar_to_utf8_no_alloc(wlpString, lpString, size+1);
 wfree(lpString);
 SetLastError(err);
 return size;
}
