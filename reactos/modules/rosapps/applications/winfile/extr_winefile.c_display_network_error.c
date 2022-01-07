
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HWND ;
typedef int DWORD ;


 int BUFFER_LEN ;
 int IDS_WINEFILE ;
 int MB_OK ;
 int MessageBoxW (int ,int *,int ,int ) ;
 scalar_t__ NO_ERROR ;
 int RS (int *,int ) ;
 scalar_t__ WNetGetLastErrorW (int *,int *,int,int *,int) ;

__attribute__((used)) static void display_network_error(HWND hwnd)
{
 WCHAR msg[BUFFER_LEN], provider[BUFFER_LEN], b2[BUFFER_LEN];
 DWORD error;

 if (WNetGetLastErrorW(&error, msg, BUFFER_LEN, provider, BUFFER_LEN) == NO_ERROR)
  MessageBoxW(hwnd, msg, RS(b2,IDS_WINEFILE), MB_OK);
}
