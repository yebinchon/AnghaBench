
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_4__ {size_t numAddresses; int * addresses; } ;
struct TYPE_3__ {TYPE_2__* cacheEntry; int ret; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__ NetBTNameQueryData ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIELD_OFFSET (int ,int ) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 int NBNameCacheEntry ;
 int NRC_OSRESNOTAV ;
 int * addresses ;

__attribute__((used)) static BOOL NetBTFindNameAnswerCallback(void *pVoid, WORD answerCount,
 WORD answerIndex, PUCHAR rData, WORD rLen)
{
    NetBTNameQueryData *queryData = pVoid;
    BOOL ret;

    if (queryData)
    {
        if (queryData->cacheEntry == ((void*)0))
        {
            queryData->cacheEntry = HeapAlloc(GetProcessHeap(), 0,
             FIELD_OFFSET(NBNameCacheEntry, addresses[answerCount]));
            if (queryData->cacheEntry)
                queryData->cacheEntry->numAddresses = 0;
            else
                queryData->ret = NRC_OSRESNOTAV;
        }
        if (rLen == 6 && queryData->cacheEntry &&
         queryData->cacheEntry->numAddresses < answerCount)
        {
            queryData->cacheEntry->addresses[queryData->cacheEntry->
             numAddresses++] = *(const DWORD *)(rData + 2);
            ret = queryData->cacheEntry->numAddresses < answerCount;
        }
        else
            ret = FALSE;
    }
    else
        ret = FALSE;
    return ret;
}
