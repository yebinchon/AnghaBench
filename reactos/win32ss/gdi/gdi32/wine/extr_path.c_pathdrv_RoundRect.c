
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_RoundRect( PHYSDEV dev, INT x1, INT y1, INT x2, INT y2, INT ell_width, INT ell_height )
{


    DPRINT("pathdrv_RoundRect dev %p\n",dev);
    return TRUE;
}
