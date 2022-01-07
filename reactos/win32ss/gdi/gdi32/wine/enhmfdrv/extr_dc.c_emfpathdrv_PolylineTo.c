
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pPolylineTo ) (TYPE_2__*,int const*,int ) ;} ;
typedef int POINT ;
typedef TYPE_2__* PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pPolylineTo ;
 scalar_t__ stub1 (TYPE_2__*,int const*,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int const*,int ) ;

__attribute__((used)) static BOOL emfpathdrv_PolylineTo( PHYSDEV dev, const POINT *pts, INT count )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pPolylineTo );

    return (emfdev->funcs->pPolylineTo( emfdev, pts, count ) &&
            next->funcs->pPolylineTo( next, pts, count ));
}
