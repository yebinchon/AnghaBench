
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_NOTIMPL ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int ,int ,int *) ;
 scalar_t__ VT_I4 ;
 scalar_t__ V_I4 (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;
 int set_viewer_zoom (int ,float) ;

__attribute__((used)) static HRESULT exec_optical_zoom(HTMLDocument *This, DWORD nCmdexecopt, VARIANT *pvaIn, VARIANT *pvaOut)
{
    TRACE("(%p)->(%d %s %p)\n", This, nCmdexecopt, debugstr_variant(pvaIn), pvaOut);

    if(!pvaIn || V_VT(pvaIn) != VT_I4) {
        FIXME("Unsupported argument %s\n", debugstr_variant(pvaIn));
        return E_NOTIMPL;
    }

    set_viewer_zoom(This->doc_obj->nscontainer, (float)V_I4(pvaIn)/100);
    return S_OK;
}
