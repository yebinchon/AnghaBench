
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* self; } ;
typedef TYPE_1__ MIDIMAPDATA ;
typedef int BOOL ;


 int FALSE ;
 int IsBadReadPtr (TYPE_1__*,int) ;
 int TRACE (char*,TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static BOOL MIDIMAP_IsBadData(MIDIMAPDATA* mm)
{
    if (!IsBadReadPtr(mm, sizeof(MIDIMAPDATA)) && mm->self == mm)
 return FALSE;
    TRACE("Bad midimap data (%p)\n", mm);
    return TRUE;
}
