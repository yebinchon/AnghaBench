
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVRET ;
typedef int BOOLEAN ;


 int FALSE ;
 int Symbol (int ) ;
 int TRUE ;

BOOLEAN Expression(PVRET pvr)
{
 if(!Symbol(pvr))
        return FALSE;

 return TRUE;
}
