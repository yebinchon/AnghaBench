
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* apt; } ;
struct TYPE_9__ {int oxid; scalar_t__ main; } ;
typedef int DWORD ;
typedef TYPE_1__ APARTMENT ;


 int COINIT_APARTMENTTHREADED ;
 TYPE_1__* COM_CurrentApt () ;
 TYPE_7__* COM_CurrentInfo () ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* MTA ;
 TYPE_1__* MainApartment ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int apartment_addref (TYPE_1__*) ;
 void* apartment_construct (int) ;
 int apartment_createwindowifneeded (TYPE_1__*) ;
 int csApartment ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static APARTMENT *apartment_get_or_create(DWORD model)
{
    APARTMENT *apt = COM_CurrentApt();

    if (!apt)
    {
        if (model & COINIT_APARTMENTTHREADED)
        {
            EnterCriticalSection(&csApartment);

            apt = apartment_construct(model);
            if (!MainApartment)
            {
                MainApartment = apt;
                apt->main = TRUE;
                TRACE("Created main-threaded apartment with OXID %s\n", wine_dbgstr_longlong(apt->oxid));
            }

            LeaveCriticalSection(&csApartment);

            if (apt->main)
                apartment_createwindowifneeded(apt);
        }
        else
        {
            EnterCriticalSection(&csApartment);




            if (MTA)
            {
                TRACE("entering the multithreaded apartment %s\n", wine_dbgstr_longlong(MTA->oxid));
                apartment_addref(MTA);
            }
            else
                MTA = apartment_construct(model);

            apt = MTA;

            LeaveCriticalSection(&csApartment);
        }
        COM_CurrentInfo()->apt = apt;
    }

    return apt;
}
