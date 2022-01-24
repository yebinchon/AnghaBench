#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {int dwAddr; int dwMask; scalar_t__ dwBCastAddr; } ;
struct TYPE_11__ {int /*<<< orphan*/  nameCache; TYPE_1__ ipr; int /*<<< orphan*/  nameQueryXID; } ;
struct TYPE_10__ {char* ncb_callname; } ;
typedef  scalar_t__ SOCKET ;
typedef  TYPE_2__* PNCB ;
typedef  TYPE_3__ NetBTAdapter ;
typedef  int /*<<< orphan*/  NBNameCacheEntry ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NRC_BADDR ; 
 int /*<<< orphan*/  NRC_GOODRET ; 
 int /*<<< orphan*/  NRC_NOWILD ; 
 int /*<<< orphan*/  NRC_OSRESNOTAV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSA_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  gBCastQueries ; 
 int /*<<< orphan*/  gBCastQueryTimeout ; 
 int /*<<< orphan*/  gNameCache ; 
 int gNumWINSServers ; 
 int /*<<< orphan*/  gWINSQueries ; 
 int /*<<< orphan*/  gWINSQueryTimeout ; 
 int* gWINSServers ; 

__attribute__((used)) static UCHAR FUNC7(NetBTAdapter *adapter, PNCB ncb,
 const NBNameCacheEntry **cacheEntry)
{
    UCHAR ret = NRC_GOODRET;

    FUNC4("adapter %p, ncb %p, cacheEntry %p\n", adapter, ncb, cacheEntry);

    if (!cacheEntry) return NRC_BADDR;
    *cacheEntry = NULL;

    if (!adapter) return NRC_BADDR;
    if (!ncb) return NRC_BADDR;

    if (ncb->ncb_callname[0] == '*')
        ret = NRC_NOWILD;
    else
    {
        *cacheEntry = FUNC0(gNameCache, ncb->ncb_callname);
        if (!*cacheEntry)
            *cacheEntry = FUNC0(adapter->nameCache,
             ncb->ncb_callname);
        if (!*cacheEntry)
        {
            NBNameCacheEntry *newEntry = NULL;

            ret = FUNC3(ncb->ncb_callname, &newEntry);
            if (ret == NRC_GOODRET && newEntry)
            {
                ret = FUNC2(&gNameCache, newEntry);
                if (ret != NRC_GOODRET)
                    newEntry = NULL;
            }
            else
            {
                SOCKET fd = FUNC5(PF_INET, SOCK_DGRAM, IPPROTO_UDP, NULL,
                 0, WSA_FLAG_OVERLAPPED);

                if(fd == INVALID_SOCKET)
                    ret = NRC_OSRESNOTAV;
                else
                {
                    int winsNdx;

                    adapter->nameQueryXID++;
                    for (winsNdx = 0; ret == NRC_GOODRET && *cacheEntry == NULL
                     && winsNdx < gNumWINSServers; winsNdx++)
                        ret = FUNC1(adapter, fd, ncb,
                         gWINSServers[winsNdx], FALSE, gWINSQueryTimeout,
                         gWINSQueries, &newEntry);
                    if (ret == NRC_GOODRET && newEntry)
                    {
                        ret = FUNC2(&gNameCache, newEntry);
                        if (ret != NRC_GOODRET)
                            newEntry = NULL;
                    }
                    if (ret == NRC_GOODRET && *cacheEntry == NULL)
                    {
                        DWORD bcastAddr =
                         adapter->ipr.dwAddr & adapter->ipr.dwMask;

                        if (adapter->ipr.dwBCastAddr)
                            bcastAddr |= ~adapter->ipr.dwMask;
                        ret = FUNC1(adapter, fd, ncb, bcastAddr,
                         TRUE, gBCastQueryTimeout, gBCastQueries, &newEntry);
                        if (ret == NRC_GOODRET && newEntry)
                        {
                            ret = FUNC2(&adapter->nameCache,
                             newEntry);
                            if (ret != NRC_GOODRET)
                                newEntry = NULL;
                        }
                    }
                    FUNC6(fd);
                }
            }
            *cacheEntry = newEntry;
        }
    }
    FUNC4("returning 0x%02x\n", ret);
    return ret;
}