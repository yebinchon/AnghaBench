
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int APARTMENT ;


 int * COM_CurrentApt () ;
 int apartment_addref (int *) ;
 int * apartment_find_mta () ;

APARTMENT *apartment_get_current_or_mta(void)
{
    APARTMENT *apt = COM_CurrentApt();
    if (apt)
    {
        apartment_addref(apt);
        return apt;
    }
    return apartment_find_mta();
}
