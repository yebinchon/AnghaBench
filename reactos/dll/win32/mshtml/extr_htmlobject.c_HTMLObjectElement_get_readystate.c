
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTMLObjectElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int BSTR ;


 int E_NOTIMPL ;
 int FIXME (char*,int *,int *) ;
 int * impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLObjectElement_get_readystate(HTMLDOMNode *iface, BSTR *p)
{
    HTMLObjectElement *This = impl_from_HTMLDOMNode(iface);
    FIXME("(%p)->(%p)\n", This, p);
    return E_NOTIMPL;
}
