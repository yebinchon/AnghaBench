
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int HRESULT ;


 int TRACE (char*,int *,void**) ;
 int TRUE ;
 int create_http_protocol (int ,int *,void**) ;

HRESULT HttpSProtocol_Construct(IUnknown *outer, void **ppv)
{
    TRACE("(%p %p)\n", outer, ppv);

    return create_http_protocol(TRUE, outer, ppv);
}
