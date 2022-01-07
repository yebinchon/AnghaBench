
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_2__ {int name; } ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int ) ;
 int TRUE ;
 scalar_t__ isdigit (char const) ;
 TYPE_1__* midiOutPorts ;
 unsigned int numMidiOutPorts ;
 scalar_t__ strcmpW (int ,char const*) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static BOOL MIDIMAP_FindPort(const WCHAR* name, unsigned* dev)
{
    for (*dev = 0; *dev < numMidiOutPorts; (*dev)++)
    {
 TRACE("%s\n", wine_dbgstr_w(midiOutPorts[*dev].name));
 if (strcmpW(midiOutPorts[*dev].name, name) == 0)
     return TRUE;
    }

    if (*name == '#' && isdigit(name[1]))
    {
        const WCHAR* ptr = name + 1;
        *dev = 0;
        do
        {
            *dev = *dev * 10 + *ptr - '0';
        } while (isdigit(*++ptr));
 if (*dev < numMidiOutPorts)
     return TRUE;
    }
    return FALSE;
}
