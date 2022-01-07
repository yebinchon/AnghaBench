
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int protocol_sink; } ;
typedef TYPE_1__ Protocol ;
typedef int LPCWSTR ;
typedef int HRESULT ;


 int IInternetProtocolSink_ReportProgress (int ,int ,int ) ;

__attribute__((used)) static inline HRESULT report_progress(Protocol *protocol, ULONG status_code, LPCWSTR status_text)
{
    return IInternetProtocolSink_ReportProgress(protocol->protocol_sink, status_code, status_text);
}
