
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMNode ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int S_FALSE ;

__attribute__((used)) static inline HRESULT return_null_node(IXMLDOMNode **p)
{
    if(!p)
        return E_INVALIDARG;
    *p = ((void*)0);
    return S_FALSE;
}
