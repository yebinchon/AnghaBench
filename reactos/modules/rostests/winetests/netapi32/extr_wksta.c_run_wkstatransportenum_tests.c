
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ NET_API_STATUS ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_LEVEL ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NETWORK_UNREACHABLE ;
 int MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_Success ;
 scalar_t__ NERR_WkstaNotStarted ;
 scalar_t__ RPC_X_NULL_REF_POINTER ;
 scalar_t__ STATUS_ACCESS_VIOLATION ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pNetApiBufferFree (int *) ;
 scalar_t__ pNetWkstaTransportEnum (int *,int,int **,int ,scalar_t__*,scalar_t__*,int *) ;

__attribute__((used)) static void run_wkstatransportenum_tests(void)
{
    LPBYTE bufPtr;
    NET_API_STATUS apiReturn;
    DWORD entriesRead, totalEntries;


    apiReturn = pNetWkstaTransportEnum(((void*)0), 1, ((void*)0), MAX_PREFERRED_LENGTH,
        ((void*)0), &totalEntries, ((void*)0));
    ok(apiReturn == ERROR_INVALID_LEVEL || apiReturn == ERROR_INVALID_PARAMETER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);


    apiReturn = pNetWkstaTransportEnum(((void*)0), 0, ((void*)0), MAX_PREFERRED_LENGTH,
        ((void*)0), &totalEntries, ((void*)0));


    if (apiReturn == ERROR_NETWORK_UNREACHABLE)
        return;

    ok(apiReturn == STATUS_ACCESS_VIOLATION || apiReturn == ERROR_INVALID_PARAMETER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);


    apiReturn = pNetWkstaTransportEnum(((void*)0), 0, ((void*)0), MAX_PREFERRED_LENGTH,
        ((void*)0), ((void*)0), ((void*)0));
    ok(apiReturn == STATUS_ACCESS_VIOLATION || apiReturn == RPC_X_NULL_REF_POINTER || apiReturn == ERROR_INVALID_PARAMETER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);


    apiReturn = pNetWkstaTransportEnum(((void*)0), 0, &bufPtr, MAX_PREFERRED_LENGTH,
        &entriesRead, ((void*)0), ((void*)0));
    ok(apiReturn == RPC_X_NULL_REF_POINTER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);


    apiReturn = pNetWkstaTransportEnum(((void*)0), 0, &bufPtr, MAX_PREFERRED_LENGTH,
        &entriesRead, &totalEntries, ((void*)0));
    ok(apiReturn == NERR_Success || apiReturn == ERROR_NETWORK_UNREACHABLE || apiReturn == NERR_WkstaNotStarted,
       "NetWkstaTransportEnum returned %d\n", apiReturn);
    if (apiReturn == NERR_Success) {


        ok(bufPtr != ((void*)0), "got data back\n");
        ok(entriesRead > 0, "read at least one transport\n");
        ok(totalEntries > 0 || broken(totalEntries == 0) ,
           "at least one transport\n");
        pNetApiBufferFree(bufPtr);
    }
}
