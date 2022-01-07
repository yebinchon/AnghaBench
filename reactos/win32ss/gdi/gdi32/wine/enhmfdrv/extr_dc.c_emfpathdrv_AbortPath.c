
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int (* pDeleteDC ) (int ) ;} ;
struct TYPE_14__ {TYPE_1__* funcs; } ;
struct TYPE_13__ {int (* pAbortPath ) (TYPE_2__*) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef int DC ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_5__ emfpath_driver ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int * get_physdev_dc (TYPE_2__*) ;
 int pAbortPath ;
 int pop_dc_driver (int *,TYPE_5__*) ;
 int stub1 (int ) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static BOOL emfpathdrv_AbortPath( PHYSDEV dev )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pAbortPath );
    DC *dc = get_physdev_dc( dev );

    emfpath_driver.pDeleteDC( pop_dc_driver( dc, &emfpath_driver ));
    emfdev->funcs->pAbortPath( emfdev );
    return next->funcs->pAbortPath( next );
}
