
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {TYPE_1__* applet; int id; } ;
struct TYPE_4__ {int cmd; } ;
typedef int HWND ;
typedef TYPE_2__ CPlItem ;


 int MAX_PATH ;
 int SW_SHOW ;
 int ShellExecuteW (int ,char*,int ,char*,int *,int ) ;
 int wsprintfW (char*,char*,int ) ;

__attribute__((used)) static void Control_StartApplet(HWND hWnd, CPlItem *item)
{
    WCHAR verbOpen[] = {'c','p','l','o','p','e','n',0};
    WCHAR format[] = {'@','%','d',0};
    WCHAR param[MAX_PATH];


    if (item)
    {
        wsprintfW(param, format, item->id);
        ShellExecuteW(hWnd, verbOpen, item->applet->cmd, param, ((void*)0), SW_SHOW);
    }
}
