
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* self; } ;
typedef TYPE_1__ MIDIMAPDATA ;
typedef int LPMIDIOPENDESC ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int MIDIERR_INVALIDSETUP ;
 scalar_t__ MIDIMAP_LoadSettings (TYPE_1__*) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOMEM ;
 int TRACE (char*,scalar_t__*,int ,int ) ;

__attribute__((used)) static DWORD modOpen(DWORD_PTR *lpdwUser, LPMIDIOPENDESC lpDesc, DWORD dwFlags)
{
    MIDIMAPDATA* mom = HeapAlloc(GetProcessHeap(), 0, sizeof(MIDIMAPDATA));

    TRACE("(%p %p %08lx)\n", lpdwUser, lpDesc, dwFlags);

    if (!mom) return MMSYSERR_NOMEM;

    if (MIDIMAP_LoadSettings(mom))
    {
 *lpdwUser = (DWORD_PTR)mom;
 mom->self = mom;

 return MMSYSERR_NOERROR;
    }
    HeapFree(GetProcessHeap(), 0, mom);
    return MIDIERR_INVALIDSETUP;
}
