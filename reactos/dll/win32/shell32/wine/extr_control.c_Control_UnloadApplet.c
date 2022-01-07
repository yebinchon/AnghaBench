
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int count; struct TYPE_6__* cmd; int entry; int hModule; int hWnd; int (* proc ) (int ,int ,long,long) ;TYPE_1__* info; } ;
struct TYPE_5__ {long data; } ;
typedef TYPE_2__ CPlApplet ;


 int CPL_EXIT ;
 int CPL_STOP ;
 int FreeLibrary (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int list_remove (int *) ;
 int stub1 (int ,int ,unsigned int,long) ;
 int stub2 (int ,int ,long,long) ;

void Control_UnloadApplet(CPlApplet* applet)
{
    unsigned i;

    for (i = 0; i < applet->count; i++)
        applet->proc(applet->hWnd, CPL_STOP, i, applet->info[i].data);

    if (applet->proc) applet->proc(applet->hWnd, CPL_EXIT, 0L, 0L);
    FreeLibrary(applet->hModule);

    list_remove( &applet->entry );

    HeapFree(GetProcessHeap(), 0, applet->cmd);
    HeapFree(GetProcessHeap(), 0, applet);
}
