
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int content_length; scalar_t__ available_bytes; scalar_t__ current_position; int protocol_sink; } ;
typedef TYPE_1__ Protocol ;
typedef int DWORD ;


 int BSCF_FIRSTDATANOTIFICATION ;
 int BSCF_INTERMEDIATEDATANOTIFICATION ;
 int BSCF_LASTDATANOTIFICATION ;
 int FLAG_ALL_DATA_READ ;
 int FLAG_FIRST_DATA_REPORTED ;
 int FLAG_LAST_DATA_REPORTED ;
 int IInternetProtocolSink_ReportData (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void report_data(Protocol *protocol)
{
    DWORD bscf;

    if((protocol->flags & FLAG_LAST_DATA_REPORTED) || !protocol->protocol_sink)
        return;

    if(protocol->flags & FLAG_FIRST_DATA_REPORTED) {
        bscf = BSCF_INTERMEDIATEDATANOTIFICATION;
    }else {
        protocol->flags |= FLAG_FIRST_DATA_REPORTED;
        bscf = BSCF_FIRSTDATANOTIFICATION;
    }

    if(protocol->flags & FLAG_ALL_DATA_READ && !(protocol->flags & FLAG_LAST_DATA_REPORTED)) {
        protocol->flags |= FLAG_LAST_DATA_REPORTED;
        bscf |= BSCF_LASTDATANOTIFICATION;
    }

    IInternetProtocolSink_ReportData(protocol->protocol_sink, bscf,
            protocol->current_position+protocol->available_bytes,
            protocol->content_length);
}
