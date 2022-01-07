
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* pDeleteDC ) (int ) ;} ;
typedef int PHYSDEV ;
typedef int DC ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;
 int * get_physdev_dc (int ) ;
 TYPE_1__ path_driver ;
 int pop_dc_driver (int *,TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static BOOL pathdrv_AbortPath( PHYSDEV dev )
{
    DC *dc = get_physdev_dc( dev );
    DPRINT("pathdrv_AbortPath dev %p\n",dev);
    path_driver.pDeleteDC( pop_dc_driver( dc, &path_driver ));
    return TRUE;
}
