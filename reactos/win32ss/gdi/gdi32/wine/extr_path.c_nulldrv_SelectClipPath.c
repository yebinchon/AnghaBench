
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hdc; } ;
typedef TYPE_1__* PHYSDEV ;
typedef int INT ;
typedef scalar_t__ HRGN ;
typedef int BOOL ;


 int DPRINT (char*,TYPE_1__*) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ ERROR ;
 scalar_t__ ExtSelectClipRgn (int ,scalar_t__,int ) ;
 int FALSE ;
 scalar_t__ PathToRegion (int ) ;

BOOL nulldrv_SelectClipPath( PHYSDEV dev, INT mode )
{
    BOOL ret = FALSE;
    HRGN hrgn = PathToRegion( dev->hdc );
    DPRINT("nulldrv_SelectClipPath dev %p\n",dev);
    if (hrgn)
    {
        ret = ExtSelectClipRgn( dev->hdc, hrgn, mode ) != ERROR;
        DeleteObject( hrgn );
    }
    return ret;

}
