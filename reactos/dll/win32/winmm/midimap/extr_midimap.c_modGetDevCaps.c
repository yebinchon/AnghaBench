
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int wMid; int wPid; int vDriverVersion; int wChannelMask; long dwSupport; scalar_t__ wNotes; scalar_t__ wVoices; int wTechnology; int szPname; } ;
typedef int MIDIMAPDATA ;
typedef TYPE_1__* LPMIDIOUTCAPSW ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int MMSYSERR_NOERROR ;
 int MOD_MAPPER ;
 int lstrcpyW (int ,char const*) ;

__attribute__((used)) static DWORD modGetDevCaps(UINT wDevID, MIDIMAPDATA* mom, LPMIDIOUTCAPSW lpMidiCaps, DWORD_PTR size)
{
    static const WCHAR name[] = {'W','i','n','e',' ','m','i','d','i',' ','m','a','p','p','e','r',0};
    lpMidiCaps->wMid = 0x00FF;
    lpMidiCaps->wPid = 0x0001;
    lpMidiCaps->vDriverVersion = 0x0100;
    lstrcpyW(lpMidiCaps->szPname, name);
    lpMidiCaps->wTechnology = MOD_MAPPER;
    lpMidiCaps->wVoices = 0;
    lpMidiCaps->wNotes = 0;
    lpMidiCaps->wChannelMask = 0xFFFF;
    lpMidiCaps->dwSupport = 0L;

    return MMSYSERR_NOERROR;
}
