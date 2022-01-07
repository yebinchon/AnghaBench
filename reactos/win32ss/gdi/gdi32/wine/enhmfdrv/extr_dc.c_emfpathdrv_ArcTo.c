
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pArcTo ) (TYPE_2__*,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pArcTo ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static BOOL emfpathdrv_ArcTo( PHYSDEV dev, INT left, INT top, INT right, INT bottom,
                              INT xstart, INT ystart, INT xend, INT yend )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pArcTo );

    return (emfdev->funcs->pArcTo( emfdev, left, top, right, bottom, xstart, ystart, xend, yend ) &&
            next->funcs->pArcTo( next, left, top, right, bottom, xstart, ystart, xend, yend ));
}
