
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_19__ {scalar_t__ numAddresses; int * addresses; } ;
struct TYPE_18__ {int nameQueryXID; } ;
struct TYPE_17__ {int gotResponse; int astatLen; TYPE_2__* astat; } ;
struct TYPE_16__ {scalar_t__ name_count; } ;
struct TYPE_15__ {int ncb_callname; int ncb_length; int ncb_buffer; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__* PNCB ;
typedef TYPE_2__* PADAPTER_STATUS ;
typedef TYPE_3__ NetBTNodeQueryData ;
typedef TYPE_4__ NetBTAdapter ;
typedef TYPE_5__ NBNameCacheEntry ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 scalar_t__ GetTickCount () ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_UDP ;
 int NBNS_TYPE_NBSTAT ;
 int NCB_CANCELLED (TYPE_1__*) ;
 int NRC_BADDR ;
 int NRC_CMDCAN ;
 int NRC_CMDTMO ;
 int NRC_GOODRET ;
 int NRC_INVADDRESS ;
 int NRC_OSRESNOTAV ;
 int NRC_SYSTEM ;
 int NetBTInternalFindName (TYPE_4__*,TYPE_1__*,TYPE_5__ const**) ;
 int NetBTNodeStatusAnswerCallback ;
 int NetBTSendNameQuery (scalar_t__,int ,int ,int ,int ,int ) ;
 int NetBTWaitForNameResponse (TYPE_4__*,scalar_t__,scalar_t__,int ,TYPE_3__*) ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int TRACE (char*,TYPE_4__*,...) ;
 scalar_t__ WSASocketA (int ,int ,int ,int *,int ,int ) ;
 int WSA_FLAG_OVERLAPPED ;
 int closesocket (scalar_t__) ;
 scalar_t__ gWINSQueries ;
 scalar_t__ gWINSQueryTimeout ;

__attribute__((used)) static UCHAR NetBTAstatRemote(NetBTAdapter *adapter, PNCB ncb)
{
    UCHAR ret = NRC_GOODRET;
    const NBNameCacheEntry *cacheEntry = ((void*)0);

    TRACE("adapter %p, NCB %p\n", adapter, ncb);

    if (!adapter) return NRC_BADDR;
    if (!ncb) return NRC_INVADDRESS;

    ret = NetBTInternalFindName(adapter, ncb, &cacheEntry);
    if (ret == NRC_GOODRET && cacheEntry)
    {
        if (cacheEntry->numAddresses > 0)
        {
            SOCKET fd = WSASocketA(PF_INET, SOCK_DGRAM, IPPROTO_UDP, ((void*)0), 0,
             WSA_FLAG_OVERLAPPED);

            if(fd == INVALID_SOCKET)
                ret = NRC_OSRESNOTAV;
            else
            {
                NetBTNodeQueryData queryData;
                DWORD queries;
                PADAPTER_STATUS astat = (PADAPTER_STATUS)ncb->ncb_buffer;

                adapter->nameQueryXID++;
                astat->name_count = 0;
                queryData.gotResponse = FALSE;
                queryData.astat = astat;
                queryData.astatLen = ncb->ncb_length;
                for (queries = 0; !queryData.gotResponse &&
                 queries < gWINSQueries; queries++)
                {
                    if (!NCB_CANCELLED(ncb))
                    {
                        int r = NetBTSendNameQuery(fd, ncb->ncb_callname,
                         adapter->nameQueryXID, NBNS_TYPE_NBSTAT,
                         cacheEntry->addresses[0], FALSE);

                        if (r == 0)
                            ret = NetBTWaitForNameResponse(adapter, fd,
                             GetTickCount() + gWINSQueryTimeout,
                             NetBTNodeStatusAnswerCallback, &queryData);
                        else
                            ret = NRC_SYSTEM;
                    }
                    else
                        ret = NRC_CMDCAN;
                }
                closesocket(fd);
            }
        }
        else
            ret = NRC_CMDTMO;
    }
    else if (ret == NRC_CMDCAN)
        ;
    else
        ret = NRC_CMDTMO;
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
