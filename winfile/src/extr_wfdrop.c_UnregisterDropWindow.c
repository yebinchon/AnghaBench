
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct IUnknown {int dummy; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {int (* Release ) (TYPE_2__*) ;} ;
typedef TYPE_2__ IDropTarget ;
typedef int HWND ;


 int CoLockObjectExternal (struct IUnknown*,int ,int ) ;
 int FALSE ;
 int RevokeDragDrop (int ) ;
 int TRUE ;
 int stub1 (TYPE_2__*) ;

void UnregisterDropWindow(HWND hwnd, IDropTarget *pDropTarget)
{

 RevokeDragDrop(hwnd);


 CoLockObjectExternal((struct IUnknown*)pDropTarget, FALSE, TRUE);


 pDropTarget->lpVtbl->Release(pDropTarget);
}
