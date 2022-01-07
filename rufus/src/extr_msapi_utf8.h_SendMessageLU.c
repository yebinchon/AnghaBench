
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int FALSE ;
 int GetLastError () ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetLastError (int ) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 scalar_t__ wlParam ;

__attribute__((used)) static __inline LRESULT SendMessageLU(HWND hWnd, UINT Msg, WPARAM wParam, const char* lParam)
{
 LRESULT ret = FALSE;
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lParam);
 ret = SendMessageW(hWnd, Msg, wParam, (LPARAM)wlParam);
 err = GetLastError();
 wfree(lParam);
 SetLastError(err);
 return ret;
}
