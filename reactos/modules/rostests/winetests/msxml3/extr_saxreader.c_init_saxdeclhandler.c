
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct saxdeclhandler {int ref; int qi_hr; TYPE_1__ ISAXDeclHandler_iface; } ;
typedef int HRESULT ;


 int SAXDeclHandlerVtbl ;

__attribute__((used)) static void init_saxdeclhandler(struct saxdeclhandler *handler, HRESULT hr)
{
    handler->ISAXDeclHandler_iface.lpVtbl = &SAXDeclHandlerVtbl;
    handler->ref = 1;
    handler->qi_hr = hr;
}
