
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINE_MCIMIDI ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ mciGetDriverData (int) ;
 int mciSetDriverData (int,int ) ;

__attribute__((used)) static DWORD MIDI_drvClose(DWORD dwDevID)
{
    WINE_MCIMIDI* wmm = (WINE_MCIMIDI*)mciGetDriverData(dwDevID);

    if (wmm) {
 HeapFree(GetProcessHeap(), 0, wmm);
 mciSetDriverData(dwDevID, 0);
 return 1;
    }
    return (dwDevID == 0xFFFFFFFF) ? 1 : 0;
}
