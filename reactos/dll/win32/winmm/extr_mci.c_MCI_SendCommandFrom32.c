
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int hDriver; } ;
typedef int MCIDEVICEID ;
typedef TYPE_1__* LPWINE_MCIDRIVER ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int MCIERR_INVALID_DEVICE_ID ;
 TYPE_1__* MCI_GetDriver (int ) ;
 int SendDriverMessage (int ,int ,int ,int ) ;

__attribute__((used)) static DWORD MCI_SendCommandFrom32(MCIDEVICEID wDevID, UINT16 wMsg, DWORD_PTR dwParam1, DWORD_PTR dwParam2)
{
    DWORD dwRet = MCIERR_INVALID_DEVICE_ID;
    LPWINE_MCIDRIVER wmd = MCI_GetDriver(wDevID);

    if (wmd) {
        dwRet = SendDriverMessage(wmd->hDriver, wMsg, dwParam1, dwParam2);
    }
    return dwRet;
}
