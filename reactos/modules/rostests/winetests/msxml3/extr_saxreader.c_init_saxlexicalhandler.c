
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct saxlexicalhandler {int ref; int qi_hr; TYPE_1__ ISAXLexicalHandler_iface; } ;
typedef int HRESULT ;


 int SAXLexicalHandlerVtbl ;

__attribute__((used)) static void init_saxlexicalhandler(struct saxlexicalhandler *handler, HRESULT hr)
{
    handler->ISAXLexicalHandler_iface.lpVtbl = &SAXLexicalHandlerVtbl;
    handler->ref = 1;
    handler->qi_hr = hr;
}
