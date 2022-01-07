
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ protocol_sink; } ;
typedef TYPE_1__ Protocol ;
typedef int HRESULT ;


 int FLAG_RESULT_REPORTED ;
 int IInternetProtocolSink_ReportResult (scalar_t__,int ,int ,int *) ;

__attribute__((used)) static inline HRESULT report_result(Protocol *protocol, HRESULT hres)
{
    if (!(protocol->flags & FLAG_RESULT_REPORTED) && protocol->protocol_sink) {
        protocol->flags |= FLAG_RESULT_REPORTED;
        IInternetProtocolSink_ReportResult(protocol->protocol_sink, hres, 0, ((void*)0));
    }

    return hres;
}
