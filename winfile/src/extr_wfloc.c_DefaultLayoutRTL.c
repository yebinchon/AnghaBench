
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int LANGIDFROMLCID (int ) ;


 int PRIMARYLANGID (int ) ;
 int TRUE ;
 int lcid ;

BOOL DefaultLayoutRTL()
{
    switch (PRIMARYLANGID(LANGIDFROMLCID(lcid)))
    {

    case 129:
    case 128:
        return TRUE;
    default:
        return FALSE;
    }
}
