
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int APARTMENT ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int * MTA ;
 int apartment_addref (int *) ;
 int csApartment ;

__attribute__((used)) static APARTMENT *apartment_find_mta(void)
{
    APARTMENT *apt;

    EnterCriticalSection(&csApartment);

    if ((apt = MTA))
        apartment_addref(apt);

    LeaveCriticalSection(&csApartment);

    return apt;
}
