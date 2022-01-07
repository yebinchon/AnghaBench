
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IUnknown {int dummy; } ;
typedef int WF_IDropTarget ;
typedef int LPDROPTARGET ;
typedef int HWND ;


 int CoLockObjectExternal (struct IUnknown*,int ,int ) ;
 int CreateDropTarget (int ,int **) ;
 int FALSE ;
 int RegisterDragDrop (int ,int ) ;
 int TRUE ;

void RegisterDropWindow(HWND hwnd, WF_IDropTarget **ppDropTarget)
{
 WF_IDropTarget *pDropTarget;

 CreateDropTarget(hwnd, &pDropTarget);


 CoLockObjectExternal((struct IUnknown*)pDropTarget, TRUE, FALSE);


 RegisterDragDrop(hwnd, (LPDROPTARGET)pDropTarget);

 *ppDropTarget = pDropTarget;
}
