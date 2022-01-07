
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_Arc( PHYSDEV dev, INT left, INT top, INT right, INT bottom,
                         INT xstart, INT ystart, INT xend, INT yend )
{

    DPRINT("pathdrv_Arc dev %p\n",dev);
    return TRUE;
}
