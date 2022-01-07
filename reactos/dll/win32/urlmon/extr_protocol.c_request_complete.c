
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int data ;
struct TYPE_13__ {int dwError; scalar_t__ dwResult; } ;
struct TYPE_12__ {int dwState; void* pData; } ;
struct TYPE_11__ {int flags; int bindf; int protocol_sink; scalar_t__ request; } ;
typedef TYPE_1__ Protocol ;
typedef TYPE_2__ PROTOCOLDATA ;
typedef TYPE_3__ INTERNET_ASYNC_RESULT ;
typedef scalar_t__ HINTERNET ;


 int BINDF_FROMURLMON ;
 int BINDSTATUS_DOWNLOADINGDATA ;
 int BINDSTATUS_ENDDOWNLOADCOMPONENTS ;
 int FLAG_ERROR ;
 int FLAG_FIRST_CONTINUE_COMPLETE ;
 int FLAG_REQUEST_COMPLETE ;
 int IInternetProtocolSink_Switch (int ,TYPE_2__*) ;
 int TRACE (char*,TYPE_1__*,...) ;
 void* UlongToPtr (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int protocol_continue (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void request_complete(Protocol *protocol, INTERNET_ASYNC_RESULT *ar)
{
    PROTOCOLDATA data;

    TRACE("(%p)->(%p)\n", protocol, ar);


    memset(&data, 0, sizeof(data));
    data.dwState = 0xf1000000;

    if(ar->dwResult) {
        protocol->flags |= FLAG_REQUEST_COMPLETE;

        if(!protocol->request) {
            TRACE("setting request handle %p\n", (HINTERNET)ar->dwResult);
            protocol->request = (HINTERNET)ar->dwResult;
        }

        if(protocol->flags & FLAG_FIRST_CONTINUE_COMPLETE)
            data.pData = UlongToPtr(BINDSTATUS_ENDDOWNLOADCOMPONENTS);
        else
            data.pData = UlongToPtr(BINDSTATUS_DOWNLOADINGDATA);

    }else {
        protocol->flags |= FLAG_ERROR;
        data.pData = UlongToPtr(ar->dwError);
    }

    if (protocol->bindf & BINDF_FROMURLMON)
        IInternetProtocolSink_Switch(protocol->protocol_sink, &data);
    else
        protocol_continue(protocol, &data);
}
