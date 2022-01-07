
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int GetCommModemStatus (int ,int*) ;
 int MS_CTS_ON ;
 int MS_DSR_ON ;
 int MS_RING_ON ;
 int MS_RLSD_ON ;
 int ok (int ,char*) ;
 int trace (char*,int,char*,char*,char*,char*) ;

__attribute__((used)) static void test_GetModemStatus(HANDLE hcom)
{
    DWORD ModemStat = 0;

    ok(GetCommModemStatus(hcom, &ModemStat), "GetCommModemStatus failed\n");
    trace("GetCommModemStatus returned 0x%08x->%s%s%s%s\n", ModemStat,
   (ModemStat &MS_RLSD_ON)?"MS_RLSD_ON ":"",
   (ModemStat &MS_RING_ON)?"MS_RING_ON ":"",
   (ModemStat &MS_DSR_ON)?"MS_DSR_ON ":"",
   (ModemStat &MS_CTS_ON)?"MS_CTS_ON ":"");
}
