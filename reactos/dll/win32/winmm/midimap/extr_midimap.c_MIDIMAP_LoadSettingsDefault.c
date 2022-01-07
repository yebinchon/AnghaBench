
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int ** ChannelMap; } ;
typedef TYPE_1__ MIDIMAPDATA ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int MIDIMAP_FindPort (int const*,unsigned int*) ;
 int TRUE ;
 int * midiOutPorts ;
 unsigned int numMidiOutPorts ;
 int wine_dbgstr_w (int const*) ;

__attribute__((used)) static BOOL MIDIMAP_LoadSettingsDefault(MIDIMAPDATA* mom, const WCHAR* port)
{
    unsigned i, dev = 0;

    if (port != ((void*)0) && !MIDIMAP_FindPort(port, &dev))
    {
 ERR("Registry glitch: couldn't find midi out (%s)\n", wine_dbgstr_w(port));
 dev = 0;
    }


    if (dev >= numMidiOutPorts)
 return FALSE;

    for (i = 0; i < 16; i++) mom->ChannelMap[i] = &midiOutPorts[dev];

    return TRUE;
}
