
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int HWND ;


 int AppInstance ;
 int BS_AUTOCHECKBOX ;
 int BS_AUTORADIOBUTTON ;
 int BS_DEFPUSHBUTTON ;
 int BS_PUSHBUTTON ;
 int BUTTON_CLASS ;
 int CreateWindowEx (int ,int ,char*,int,int,int,int,int,int ,int *,int ,int *) ;
 int DPRINT (char*) ;
 int WS_CHILD ;
 int WS_VISIBLE ;

LRESULT WmCreate(
   HWND Wnd)
{
   DPRINT("WM_CREATE (enter).");
   DPRINT("test 1");
   CreateWindowEx(0, BUTTON_CLASS, "PushButton", BS_PUSHBUTTON | WS_CHILD | WS_VISIBLE,
      10, 10, 150, 30, Wnd, ((void*)0), AppInstance, ((void*)0));
   DPRINT("test 2");
   CreateWindowEx(0, BUTTON_CLASS, "DefPushButton", BS_DEFPUSHBUTTON | WS_CHILD | WS_VISIBLE,
      10, 40, 150, 30, Wnd, ((void*)0), AppInstance, ((void*)0));
   DPRINT("test 3");
   CreateWindowEx(0, BUTTON_CLASS, "AutoRadioButton", BS_AUTORADIOBUTTON | WS_CHILD | WS_VISIBLE,
      10, 70, 150, 30, Wnd, ((void*)0), AppInstance, ((void*)0));
   DPRINT("test 4");
   CreateWindowEx(0, BUTTON_CLASS, "AutoCheckBox", BS_AUTOCHECKBOX | WS_CHILD | WS_VISIBLE,
      10, 100, 150, 30, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("WM_CREATE (leave).");
   return 0;
}
