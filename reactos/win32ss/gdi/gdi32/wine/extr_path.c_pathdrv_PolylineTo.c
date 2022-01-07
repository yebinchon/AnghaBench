
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_PolylineTo( PHYSDEV dev, const POINT *pts, INT count )
{


    DPRINT("pathdrv_PolyLineTo dev %p\n",dev);
    return TRUE;
}
