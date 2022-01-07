
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINE_MCIWAVE ;
typedef int MCIDEVICEID ;
typedef int LRESULT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ mciGetDriverData (int) ;
 int mciSetDriverData (int,int ) ;

__attribute__((used)) static LRESULT WAVE_drvClose(MCIDEVICEID dwDevID)
{
    WINE_MCIWAVE* wmw = (WINE_MCIWAVE*)mciGetDriverData(dwDevID);

    if (wmw) {
 HeapFree(GetProcessHeap(), 0, wmw);
 mciSetDriverData(dwDevID, 0);
 return 1;
    }
    return (dwDevID == 0xFFFFFFFF) ? 1 : 0;
}
