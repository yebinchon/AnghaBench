
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int INT_PTR ;
typedef scalar_t__ HWND ;
typedef int HMENU ;
typedef int DWORD ;


 scalar_t__ CreateWindowA (char*,char*,int,int ,int ,int,int,scalar_t__,int ,int *,int ) ;
 int LBS_SORT ;
 int LBS_STANDARD ;
 int LB_ADDSTRING ;
 int REDRAW ;
 int SW_SHOW ;
 int SendMessageA (scalar_t__,int ,int ,int ) ;
 int ShowWindow (scalar_t__,int ) ;
 int assert (scalar_t__) ;
 scalar_t__* strings ;

__attribute__((used)) static HWND
create_listbox (DWORD add_style, HWND parent)
{
  HWND handle;
  INT_PTR ctl_id=0;
  if (parent)
    ctl_id=1;
  handle=CreateWindowA("LISTBOX", "TestList",
                            (LBS_STANDARD & ~LBS_SORT) | add_style,
                            0, 0, 100, 100,
                            parent, (HMENU)ctl_id, ((void*)0), 0);

  assert (handle);
  SendMessageA(handle, LB_ADDSTRING, 0, (LPARAM) strings[0]);
  SendMessageA(handle, LB_ADDSTRING, 0, (LPARAM) strings[1]);
  SendMessageA(handle, LB_ADDSTRING, 0, (LPARAM) strings[2]);
  SendMessageA(handle, LB_ADDSTRING, 0, (LPARAM) strings[3]);




  REDRAW;

  return handle;
}
