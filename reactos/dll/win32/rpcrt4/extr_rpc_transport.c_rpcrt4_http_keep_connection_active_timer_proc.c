
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int frag_len; } ;
struct TYPE_7__ {TYPE_1__ common; } ;
typedef TYPE_2__ RpcPktHdr ;
typedef int PVOID ;
typedef int HINTERNET ;
typedef int DWORD ;
typedef int BOOLEAN ;


 int InternetWriteFile (int ,TYPE_2__*,int ,int *) ;
 int NDR_LOCAL_DATA_REPRESENTATION ;
 TYPE_2__* RPCRT4_BuildHttpHeader (int ,int,int ,int ) ;
 int RPCRT4_FreeHeader (TYPE_2__*) ;

__attribute__((used)) static VOID rpcrt4_http_keep_connection_active_timer_proc(PVOID param, BOOLEAN dummy)
{
    HINTERNET in_request = param;
    RpcPktHdr *idle_pkt;

    idle_pkt = RPCRT4_BuildHttpHeader(NDR_LOCAL_DATA_REPRESENTATION, 0x0001,
                                      0, 0);
    if (idle_pkt)
    {
        DWORD bytes_written;
        InternetWriteFile(in_request, idle_pkt, idle_pkt->common.frag_len, &bytes_written);
        RPCRT4_FreeHeader(idle_pkt);
    }
}
