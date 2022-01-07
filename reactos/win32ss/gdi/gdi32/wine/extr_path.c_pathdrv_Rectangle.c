
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_Rectangle( PHYSDEV dev, INT x1, INT y1, INT x2, INT y2 )
{


    DPRINT("pathdrv_Rectangle dev %p\n",dev);
    return TRUE;
}
