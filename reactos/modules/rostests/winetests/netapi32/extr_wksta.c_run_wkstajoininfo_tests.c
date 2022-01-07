
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NET_API_STATUS ;
typedef int NETSETUP_JOIN_STATUS ;
typedef int * LPWSTR ;


 int ERROR_INVALID_PARAMETER ;
 int NERR_Success ;
 int NetSetupUnknownStatus ;
 int ok (int,char*,int) ;
 int pNetApiBufferFree (int *) ;
 int pNetGetJoinInformation (int *,int **,int*) ;
 int trace (char*,int ,int) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void run_wkstajoininfo_tests(void)
{
    NET_API_STATUS ret;
    LPWSTR buffer = ((void*)0);
    NETSETUP_JOIN_STATUS buffertype = 0xdada;

    if (!pNetGetJoinInformation) {
        win_skip("NetGetJoinInformation not available\n");
        return;
    }

    ret = pNetGetJoinInformation(((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "NetJoinGetInformation returned unexpected 0x%08x\n", ret);
    ok(buffertype == 0xdada, "buffertype set to unexpected value %d\n", buffertype);

    ret = pNetGetJoinInformation(((void*)0), &buffer, &buffertype);
    ok(ret == NERR_Success, "NetJoinGetInformation returned unexpected 0x%08x\n", ret);
    ok(buffertype != 0xdada && buffertype != NetSetupUnknownStatus, "buffertype set to unexpected value %d\n", buffertype);
    trace("workstation joined to %s with status %d\n", wine_dbgstr_w(buffer), buffertype);
    pNetApiBufferFree(buffer);
}
