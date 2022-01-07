
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pPolyPolygon ) (TYPE_2__*,int const*,int const*,int ) ;} ;
typedef int POINT ;
typedef TYPE_2__* PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pPolyPolygon ;
 scalar_t__ stub1 (TYPE_2__*,int const*,int const*,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int const*,int const*,int ) ;

__attribute__((used)) static BOOL emfpathdrv_PolyPolygon( PHYSDEV dev, const POINT *pts, const INT *counts, UINT polygons )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pPolyPolygon );

    return (emfdev->funcs->pPolyPolygon( emfdev, pts, counts, polygons ) &&
            next->funcs->pPolyPolygon( next, pts, counts, polygons ));
}
