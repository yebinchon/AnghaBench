
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_3__ IErrorInfo_iface; scalar_t__ m_dwHelpContext; int * help_file; int * description; int * source; TYPE_1__ ISupportErrorInfo_iface; TYPE_2__ ICreateErrorInfo_iface; } ;
typedef TYPE_3__ IErrorInfo ;
typedef TYPE_4__ ErrorInfoImpl ;


 int CreateErrorInfoVtbl ;
 int ErrorInfoVtbl ;
 int SupportErrorInfoVtbl ;
 TYPE_4__* heap_alloc (int) ;

__attribute__((used)) static IErrorInfo* IErrorInfoImpl_Constructor(void)
{
    ErrorInfoImpl *This = heap_alloc(sizeof(ErrorInfoImpl));

    if (!This) return ((void*)0);

    This->IErrorInfo_iface.lpVtbl = &ErrorInfoVtbl;
    This->ICreateErrorInfo_iface.lpVtbl = &CreateErrorInfoVtbl;
    This->ISupportErrorInfo_iface.lpVtbl = &SupportErrorInfoVtbl;
    This->ref = 1;
    This->source = ((void*)0);
    This->description = ((void*)0);
    This->help_file = ((void*)0);
    This->m_dwHelpContext = 0;

    return &This->IErrorInfo_iface;
}
