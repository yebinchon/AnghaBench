
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCONTEXTMENU3 ;
typedef scalar_t__ LPCONTEXTMENU2 ;
typedef int IContextMenu ;


 int CtxMenu_reset () ;
 scalar_t__ IContextMenu_QueryInterface (int *,int *,void**) ;
 int IContextMenu_Release (int *) ;
 int IID_IContextMenu2 ;
 int IID_IContextMenu3 ;
 scalar_t__ NOERROR ;
 scalar_t__ s_pctxmenu2 ;
 scalar_t__ s_pctxmenu3 ;

__attribute__((used)) static IContextMenu* CtxMenu_query_interfaces(IContextMenu* pcm1)
{
 IContextMenu* pcm = ((void*)0);

 CtxMenu_reset();

 if (IContextMenu_QueryInterface(pcm1, &IID_IContextMenu3, (void**)&pcm) == NOERROR)
  s_pctxmenu3 = (LPCONTEXTMENU3)pcm;
 else if (IContextMenu_QueryInterface(pcm1, &IID_IContextMenu2, (void**)&pcm) == NOERROR)
  s_pctxmenu2 = (LPCONTEXTMENU2)pcm;

 if (pcm) {
  IContextMenu_Release(pcm1);
  return pcm;
 } else
  return pcm1;
}
