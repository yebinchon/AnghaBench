
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;


 int HWND_BROADCAST ;
 int PostMessage (int ,int ,int ,int ) ;
 int g_nNotifyMsg ;

__attribute__((used)) static __inline void VfdNotify(
 WPARAM wParam,
 LPARAM lParam)
{



 PostMessage(HWND_BROADCAST, g_nNotifyMsg, wParam, lParam);
}
