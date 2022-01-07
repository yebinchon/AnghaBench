
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int m_lRefCount; int m_fAllowDrop; int m_hWnd; TYPE_1__ idt; } ;
typedef TYPE_2__ WF_IDropTarget ;
typedef int IDropTargetVtbl ;
typedef int HWND ;


 int FALSE ;
 TYPE_2__* calloc (int,int) ;
 int idt_vtbl ;

WF_IDropTarget * WF_IDropTarget_new(HWND hwnd)
{
  WF_IDropTarget *result;

  result = calloc(1, sizeof(WF_IDropTarget));

  if (result)
  {
   result->idt.lpVtbl = (IDropTargetVtbl*)&idt_vtbl;

   result->m_lRefCount = 1;
   result->m_hWnd = hwnd;
   result->m_fAllowDrop = FALSE;


  }

  return result;
}
