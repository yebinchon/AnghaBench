
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; int nBlockAlign; int wBitsPerSample; scalar_t__ cbSize; int wFormatTag; } ;
struct TYPE_7__ {int wDevID; TYPE_1__ wfxRef; } ;
typedef TYPE_2__ WINE_MCIWAVE ;
struct TYPE_8__ {int wDeviceID; int wType; int wCustomCommandTable; } ;
typedef int LRESULT ;
typedef TYPE_3__* LPMCI_OPEN_DRIVER_PARMSW ;
typedef int LPCWSTR ;
typedef int DWORD_PTR ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int MCI_DEVTYPE_WAVEFORM_AUDIO ;
 int MCI_NO_COMMAND_TABLE ;
 int WAVE_FORMAT_PCM ;
 int mciSetDriverData (int,int ) ;

__attribute__((used)) static LRESULT WAVE_drvOpen(LPCWSTR str, LPMCI_OPEN_DRIVER_PARMSW modp)
{
    WINE_MCIWAVE* wmw;

    if (modp == ((void*)0)) return 0xFFFFFFFF;

    wmw = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WINE_MCIWAVE));

    if (!wmw)
 return 0;

    wmw->wDevID = modp->wDeviceID;
    mciSetDriverData(wmw->wDevID, (DWORD_PTR)wmw);
    modp->wCustomCommandTable = MCI_NO_COMMAND_TABLE;
    modp->wType = MCI_DEVTYPE_WAVEFORM_AUDIO;

    wmw->wfxRef.wFormatTag = WAVE_FORMAT_PCM;
    wmw->wfxRef.nChannels = 1;
    wmw->wfxRef.nSamplesPerSec = 11025;
    wmw->wfxRef.nAvgBytesPerSec = 11025;
    wmw->wfxRef.nBlockAlign = 1;
    wmw->wfxRef.wBitsPerSample = 8;
    wmw->wfxRef.cbSize = 0;

    return modp->wDeviceID;
}
