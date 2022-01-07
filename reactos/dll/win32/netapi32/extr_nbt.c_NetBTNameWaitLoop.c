
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_14__ {int nbname; int name; } ;
struct TYPE_13__ {int ncb_callname; } ;
struct TYPE_12__ {int nameQueryXID; } ;
struct TYPE_11__ {int ret; TYPE_4__* cacheEntry; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__ NetBTNameQueryData ;
typedef TYPE_2__ NetBTAdapter ;
typedef TYPE_3__ NCB ;
typedef TYPE_4__ NBNameCacheEntry ;
typedef unsigned int DWORD ;
typedef int BOOL ;


 unsigned int GetTickCount () ;
 scalar_t__ INVALID_SOCKET ;
 int NBNS_TYPE_NB ;
 int NCBNAMSZ ;
 int NCB_CANCELLED (TYPE_3__ const*) ;
 int NRC_BADDR ;
 int NRC_CMDCAN ;
 int NRC_GOODRET ;
 int NRC_SYSTEM ;
 int NetBTFindNameAnswerCallback ;
 int NetBTSendNameQuery (scalar_t__,int ,int ,int ,unsigned int,int ) ;
 int NetBTWaitForNameResponse (TYPE_2__ const*,scalar_t__,unsigned int,int ,TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static UCHAR NetBTNameWaitLoop(const NetBTAdapter *adapter, SOCKET fd, const NCB *ncb,
 DWORD sendTo, BOOL broadcast, DWORD timeout, DWORD maxQueries,
 NBNameCacheEntry **cacheEntry)
{
    unsigned int queries;
    NetBTNameQueryData queryData;

    if (!adapter) return NRC_BADDR;
    if (fd == INVALID_SOCKET) return NRC_BADDR;
    if (!ncb) return NRC_BADDR;
    if (!cacheEntry) return NRC_BADDR;

    queryData.cacheEntry = ((void*)0);
    queryData.ret = NRC_GOODRET;
    for (queries = 0; queryData.cacheEntry == ((void*)0) && queries < maxQueries;
     queries++)
    {
        if (!NCB_CANCELLED(ncb))
        {
            int r = NetBTSendNameQuery(fd, ncb->ncb_callname,
             adapter->nameQueryXID, NBNS_TYPE_NB, sendTo, broadcast);

            if (r == 0)
                queryData.ret = NetBTWaitForNameResponse(adapter, fd,
                 GetTickCount() + timeout, NetBTFindNameAnswerCallback,
                 &queryData);
            else
                queryData.ret = NRC_SYSTEM;
        }
        else
            queryData.ret = NRC_CMDCAN;
    }
    if (queryData.cacheEntry)
    {
        memcpy(queryData.cacheEntry->name, ncb->ncb_callname, NCBNAMSZ);
        memcpy(queryData.cacheEntry->nbname, ncb->ncb_callname, NCBNAMSZ);
    }
    *cacheEntry = queryData.cacheEntry;
    return queryData.ret;
}
