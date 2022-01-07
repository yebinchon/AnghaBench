
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pExtTextOut ) (TYPE_2__*,int ,int ,int ,int const*,int ,int ,int const*) ;} ;
typedef int RECT ;
typedef TYPE_2__* PHYSDEV ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int BOOL ;


 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_2__* get_emfdev (TYPE_2__*) ;
 int pExtTextOut ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int ,int const*,int ,int ,int const*) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ,int ,int const*,int ,int ,int const*) ;

__attribute__((used)) static BOOL emfpathdrv_ExtTextOut( PHYSDEV dev, INT x, INT y, UINT flags, const RECT *rect,
                                   LPCWSTR str, UINT count, const INT *dx )
{
    PHYSDEV emfdev = get_emfdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pExtTextOut );

    return (emfdev->funcs->pExtTextOut( emfdev, x, y, flags, rect, str, count, dx ) &&
            next->funcs->pExtTextOut( next, x, y, flags, rect, str, count, dx ));
}
