
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pPolyPolyline ) (TYPE_2__*,int const*,int const*,int ) ;} ;
typedef int POINT ;
typedef TYPE_2__* PHYSDEV ;
typedef int DWORD ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pPolyPolyline ;
 scalar_t__ stub1 (TYPE_2__*,int const*,int const*,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int const*,int const*,int ) ;

__attribute__((used)) static BOOL emfpathdrv_PolyPolyline( PHYSDEV dev, const POINT *pts, const DWORD *counts, DWORD polylines )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pPolyPolyline );

    return (emfdev->funcs->pPolyPolyline( emfdev, pts, counts, polylines ) &&
            next->funcs->pPolyPolyline( next, pts, counts, polylines ));
}
