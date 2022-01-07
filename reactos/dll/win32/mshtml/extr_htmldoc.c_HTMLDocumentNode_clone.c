
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIDOMNode ;
typedef int HTMLDocumentNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int *) ;
 int * impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLDocumentNode_clone(HTMLDOMNode *iface, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    HTMLDocumentNode *This = impl_from_HTMLDOMNode(iface);
    FIXME("%p\n", This);
    return E_NOTIMPL;
}
