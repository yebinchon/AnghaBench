
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct path_physdev {int HasPathHook; } ;
struct TYPE_7__ {int (* pCreateDC ) (int *,int *,int *,int *,int *) ;} ;
struct TYPE_6__ {int physDev; } ;
typedef struct path_physdev* PHYSDEV ;
typedef TYPE_1__ DC ;
typedef int BOOL ;


 int DPRINT (char*,struct path_physdev*) ;
 int FALSE ;
 int TRUE ;
 int find_dc_driver (TYPE_1__*,TYPE_2__*) ;
 TYPE_1__* get_nulldrv_dc (struct path_physdev*) ;
 struct path_physdev* get_path_physdev (int ) ;
 TYPE_2__ path_driver ;
 int stub1 (int *,int *,int *,int *,int *) ;

BOOL nulldrv_BeginPath( PHYSDEV dev )
{
    DC *dc = get_nulldrv_dc( dev );
    struct path_physdev *physdev;

    if (!path_driver.pCreateDC( &dc->physDev, ((void*)0), ((void*)0), ((void*)0), ((void*)0) ))
    {
        return FALSE;
    }
    physdev = get_path_physdev( find_dc_driver( dc, &path_driver ));
    physdev->HasPathHook = TRUE;
    DPRINT("nulldrv_BeginPath dev %p\n",dev);
    DPRINT("nulldrv_BeginPath pd %p\n",physdev);
    return TRUE;
}
