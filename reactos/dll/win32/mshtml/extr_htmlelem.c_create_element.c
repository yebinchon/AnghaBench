
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int WCHAR ;
struct TYPE_6__ {TYPE_2__* doc; } ;
struct TYPE_7__ {TYPE_1__ node; int nsdoc; } ;
typedef int HTMLElement ;
typedef TYPE_2__ HTMLDocumentNode ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int HTMLElement_Create (TYPE_2__*,int *,int ,int **) ;
 int TRUE ;
 int create_nselem (TYPE_2__*,int const*,int **) ;
 int nsIDOMHTMLElement_Release (int *) ;

HRESULT create_element(HTMLDocumentNode *doc, const WCHAR *tag, HTMLElement **ret)
{
    nsIDOMHTMLElement *nselem;
    HRESULT hres;


    if(!doc->nsdoc)
        doc = doc->node.doc;

    hres = create_nselem(doc, tag, &nselem);
    if(FAILED(hres))
        return hres;

    hres = HTMLElement_Create(doc, (nsIDOMNode*)nselem, TRUE, ret);
    nsIDOMHTMLElement_Release(nselem);
    return hres;
}
