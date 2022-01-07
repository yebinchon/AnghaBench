
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int RunningActions; } ;
struct TYPE_5__ {int entry; int name; int process; int handle; } ;
typedef TYPE_1__ MSIRUNNINGACTION ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef int BOOL ;


 int list_add_tail (int *,int *) ;
 TYPE_1__* msi_alloc (int) ;
 int strdupW (int ) ;

__attribute__((used)) static void file_running_action(MSIPACKAGE* package, HANDLE Handle,
                                BOOL process, LPCWSTR name)
{
    MSIRUNNINGACTION *action;

    action = msi_alloc( sizeof(MSIRUNNINGACTION) );

    action->handle = Handle;
    action->process = process;
    action->name = strdupW(name);

    list_add_tail( &package->RunningActions, &action->entry );
}
