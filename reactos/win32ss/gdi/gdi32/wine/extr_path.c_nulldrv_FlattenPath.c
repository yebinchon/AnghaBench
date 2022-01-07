
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

BOOL nulldrv_FlattenPath( PHYSDEV dev )
{


    DPRINT("nulldrv_FlattenPath dev %p\n",dev);
    return TRUE;
}
