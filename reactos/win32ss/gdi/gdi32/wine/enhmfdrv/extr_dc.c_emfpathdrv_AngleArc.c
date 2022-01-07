
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pAngleArc ) (TYPE_2__*,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef int INT ;
typedef int FLOAT ;
typedef int DWORD ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pAngleArc ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static BOOL emfpathdrv_AngleArc( PHYSDEV dev, INT x, INT y, DWORD radius, FLOAT start, FLOAT sweep )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pAngleArc );

    return (emfdev->funcs->pAngleArc( emfdev, x, y, radius, start, sweep ) &&
            next->funcs->pAngleArc( next, x, y, radius, start, sweep ));
}
