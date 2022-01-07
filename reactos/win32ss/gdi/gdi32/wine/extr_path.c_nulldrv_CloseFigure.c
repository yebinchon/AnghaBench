
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int ERROR_CAN_NOT_COMPLETE ;
 int FALSE ;
 int SetLastError (int ) ;

BOOL nulldrv_CloseFigure( PHYSDEV dev )
{
    DPRINT("nulldrv_CloseFigure dev %p\n",dev);
    SetLastError( ERROR_CAN_NOT_COMPLETE );
    return FALSE;
}
