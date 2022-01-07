
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMDocument ;
struct TYPE_5__ {int nsiframe; } ;
struct TYPE_4__ {TYPE_2__ framebase; } ;
typedef TYPE_1__ HTMLIFrame ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ NS_FAILED (int ) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMDocument_Release (int *) ;
 int nsIDOMHTMLIFrameElement_GetContentDocument (int ,int **) ;
 int set_frame_doc (TYPE_2__*,int *) ;

__attribute__((used)) static HRESULT HTMLIFrame_bind_to_tree(HTMLDOMNode *iface)
{
    HTMLIFrame *This = impl_from_HTMLDOMNode(iface);
    nsIDOMDocument *nsdoc;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIDOMHTMLIFrameElement_GetContentDocument(This->framebase.nsiframe, &nsdoc);
    if(NS_FAILED(nsres) || !nsdoc) {
        ERR("GetContentDocument failed: %08x\n", nsres);
        return E_FAIL;
    }

    hres = set_frame_doc(&This->framebase, nsdoc);
    nsIDOMDocument_Release(nsdoc);
    return hres;
}
