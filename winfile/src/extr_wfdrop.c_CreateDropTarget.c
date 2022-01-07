
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WF_IDropTarget ;
typedef int HWND ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int * WF_IDropTarget_new (int ) ;

HRESULT CreateDropTarget(HWND hwnd, WF_IDropTarget **ppDropTarget)
{
 if(ppDropTarget == 0)
  return E_INVALIDARG;

 *ppDropTarget = WF_IDropTarget_new(hwnd);

 return (*ppDropTarget) ? S_OK : E_OUTOFMEMORY;

}
