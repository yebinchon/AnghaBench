
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

BOOL nulldrv_StrokeAndFillPath( PHYSDEV dev )
{
    DPRINT("nulldrv_StrokeAndFillPath dev %p\n",dev);


    return TRUE;
}
