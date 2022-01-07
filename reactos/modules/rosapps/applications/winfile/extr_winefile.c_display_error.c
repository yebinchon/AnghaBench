
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PWSTR ;
typedef int HWND ;
typedef int DWORD ;


 int BUFFER_LEN ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageW (int,int ,int ,int ,int ,int ,int *) ;
 int IDS_ERROR ;
 int IDS_WINEFILE ;
 int LANG_NEUTRAL ;
 int LocalFree (int ) ;
 int MAKELANGID (int ,int ) ;
 int MB_OK ;
 int MessageBoxW (int ,int ,int ,int ) ;
 int RS (int *,int ) ;
 int SUBLANG_DEFAULT ;

__attribute__((used)) static void display_error(HWND hwnd, DWORD error)
{
 WCHAR b1[BUFFER_LEN], b2[BUFFER_LEN];
 PWSTR msg;

 if (FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER|FORMAT_MESSAGE_FROM_SYSTEM,
  0, error, MAKELANGID(LANG_NEUTRAL,SUBLANG_DEFAULT), (PWSTR)&msg, 0, ((void*)0)))
  MessageBoxW(hwnd, msg, RS(b2,IDS_WINEFILE), MB_OK);
 else
  MessageBoxW(hwnd, RS(b1,IDS_ERROR), RS(b2,IDS_WINEFILE), MB_OK);

 LocalFree(msg);
}
