
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINT ;
typedef int PHYSDEV ;
typedef int DWORD ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_PolyBezierTo( PHYSDEV dev, const POINT *pts, DWORD cbPoints )
{


    DPRINT("pathdrv_PolyBezierTo dev %p\n",dev);
    return TRUE;
}
