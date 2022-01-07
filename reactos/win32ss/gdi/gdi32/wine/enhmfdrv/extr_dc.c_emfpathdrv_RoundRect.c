
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pRoundRect ) (TYPE_2__*,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pRoundRect ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static BOOL emfpathdrv_RoundRect( PHYSDEV dev, INT x1, INT y1, INT x2, INT y2,
                                  INT ell_width, INT ell_height )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pRoundRect );

    return (emfdev->funcs->pRoundRect( emfdev, x1, y1, x2, y2, ell_width, ell_height ) &&
            next->funcs->pRoundRect( next, x1, y1, x2, y2, ell_width, ell_height ));
}
