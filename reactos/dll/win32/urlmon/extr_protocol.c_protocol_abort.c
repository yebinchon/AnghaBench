
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int protocol_sink; } ;
typedef TYPE_1__ Protocol ;
typedef int HRESULT ;


 int FLAG_RESULT_REPORTED ;
 int INET_E_RESULT_DISPATCHED ;
 int S_OK ;
 int report_result (TYPE_1__*,int ) ;

HRESULT protocol_abort(Protocol *protocol, HRESULT reason)
{
    if(!protocol->protocol_sink)
        return S_OK;


    if(protocol->flags & FLAG_RESULT_REPORTED)
        return INET_E_RESULT_DISPATCHED;

    report_result(protocol, reason);
    return S_OK;
}
