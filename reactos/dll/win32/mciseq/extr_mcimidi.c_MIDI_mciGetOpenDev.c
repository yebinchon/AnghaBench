
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nUseCount; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
typedef scalar_t__ UINT ;
typedef int MCIDEVICEID ;


 scalar_t__ MCI_OPEN_DRIVER ;
 int WARN (char*,int ) ;
 scalar_t__ mciGetDriverData (int ) ;

__attribute__((used)) static WINE_MCIMIDI* MIDI_mciGetOpenDev(MCIDEVICEID wDevID, UINT wMsg)
{
    WINE_MCIMIDI* wmm = (WINE_MCIMIDI*)mciGetDriverData(wDevID);

    if (wmm == ((void*)0) || ((wmm->nUseCount == 0) ^ (wMsg == MCI_OPEN_DRIVER))) {
 WARN("Invalid wDevID=%u\n", wDevID);
 return 0;
    }
    return wmm;
}
