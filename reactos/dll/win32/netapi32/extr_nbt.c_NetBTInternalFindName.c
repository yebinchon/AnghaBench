
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_9__ {int dwAddr; int dwMask; scalar_t__ dwBCastAddr; } ;
struct TYPE_11__ {int nameCache; TYPE_1__ ipr; int nameQueryXID; } ;
struct TYPE_10__ {char* ncb_callname; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_2__* PNCB ;
typedef TYPE_3__ NetBTAdapter ;
typedef int NBNameCacheEntry ;
typedef int DWORD ;


 int FALSE ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_UDP ;
 int * NBNameCacheFindEntry (int ,char*) ;
 int NRC_BADDR ;
 int NRC_GOODRET ;
 int NRC_NOWILD ;
 int NRC_OSRESNOTAV ;
 int NetBTNameWaitLoop (TYPE_3__*,scalar_t__,TYPE_2__*,int,int ,int ,int ,int **) ;
 int NetBTStoreCacheEntry (int *,int *) ;
 int NetBTinetResolve (char*,int **) ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int TRACE (char*,TYPE_3__*,...) ;
 int TRUE ;
 scalar_t__ WSASocketA (int ,int ,int ,int *,int ,int ) ;
 int WSA_FLAG_OVERLAPPED ;
 int closesocket (scalar_t__) ;
 int gBCastQueries ;
 int gBCastQueryTimeout ;
 int gNameCache ;
 int gNumWINSServers ;
 int gWINSQueries ;
 int gWINSQueryTimeout ;
 int* gWINSServers ;

__attribute__((used)) static UCHAR NetBTInternalFindName(NetBTAdapter *adapter, PNCB ncb,
 const NBNameCacheEntry **cacheEntry)
{
    UCHAR ret = NRC_GOODRET;

    TRACE("adapter %p, ncb %p, cacheEntry %p\n", adapter, ncb, cacheEntry);

    if (!cacheEntry) return NRC_BADDR;
    *cacheEntry = ((void*)0);

    if (!adapter) return NRC_BADDR;
    if (!ncb) return NRC_BADDR;

    if (ncb->ncb_callname[0] == '*')
        ret = NRC_NOWILD;
    else
    {
        *cacheEntry = NBNameCacheFindEntry(gNameCache, ncb->ncb_callname);
        if (!*cacheEntry)
            *cacheEntry = NBNameCacheFindEntry(adapter->nameCache,
             ncb->ncb_callname);
        if (!*cacheEntry)
        {
            NBNameCacheEntry *newEntry = ((void*)0);

            ret = NetBTinetResolve(ncb->ncb_callname, &newEntry);
            if (ret == NRC_GOODRET && newEntry)
            {
                ret = NetBTStoreCacheEntry(&gNameCache, newEntry);
                if (ret != NRC_GOODRET)
                    newEntry = ((void*)0);
            }
            else
            {
                SOCKET fd = WSASocketA(PF_INET, SOCK_DGRAM, IPPROTO_UDP, ((void*)0),
                 0, WSA_FLAG_OVERLAPPED);

                if(fd == INVALID_SOCKET)
                    ret = NRC_OSRESNOTAV;
                else
                {
                    int winsNdx;

                    adapter->nameQueryXID++;
                    for (winsNdx = 0; ret == NRC_GOODRET && *cacheEntry == ((void*)0)
                     && winsNdx < gNumWINSServers; winsNdx++)
                        ret = NetBTNameWaitLoop(adapter, fd, ncb,
                         gWINSServers[winsNdx], FALSE, gWINSQueryTimeout,
                         gWINSQueries, &newEntry);
                    if (ret == NRC_GOODRET && newEntry)
                    {
                        ret = NetBTStoreCacheEntry(&gNameCache, newEntry);
                        if (ret != NRC_GOODRET)
                            newEntry = ((void*)0);
                    }
                    if (ret == NRC_GOODRET && *cacheEntry == ((void*)0))
                    {
                        DWORD bcastAddr =
                         adapter->ipr.dwAddr & adapter->ipr.dwMask;

                        if (adapter->ipr.dwBCastAddr)
                            bcastAddr |= ~adapter->ipr.dwMask;
                        ret = NetBTNameWaitLoop(adapter, fd, ncb, bcastAddr,
                         TRUE, gBCastQueryTimeout, gBCastQueries, &newEntry);
                        if (ret == NRC_GOODRET && newEntry)
                        {
                            ret = NetBTStoreCacheEntry(&adapter->nameCache,
                             newEntry);
                            if (ret != NRC_GOODRET)
                                newEntry = ((void*)0);
                        }
                    }
                    closesocket(fd);
                }
            }
            *cacheEntry = newEntry;
        }
    }
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
