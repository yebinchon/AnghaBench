
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nUseCount; } ;
typedef TYPE_1__ WINE_MCIWAVE ;
typedef int MCIDEVICEID ;


 int WARN (char*,int ) ;
 scalar_t__ mciGetDriverData (int ) ;

__attribute__((used)) static WINE_MCIWAVE *WAVE_mciGetOpenDev(MCIDEVICEID wDevID)
{
    WINE_MCIWAVE* wmw = (WINE_MCIWAVE*)mciGetDriverData(wDevID);

    if (wmw == ((void*)0) || wmw->nUseCount == 0) {
 WARN("Invalid wDevID=%u\n", wDevID);
 return 0;
    }
    return wmw;
}
