
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_align; int i_x; int i_y; } ;
typedef TYPE_1__ subpicture_region_t ;


 int ATTRIBUTE_ALIGNMENT ;
 int ATTRIBUTE_X ;
 int ATTRIBUTE_X_PERCENT ;
 int ATTRIBUTE_Y ;
 int ATTRIBUTE_Y_PERCENT ;
 int ParsePositionAttributeList (char*,int*,int*,int*) ;

__attribute__((used)) static void SetupPositions( subpicture_region_t *p_region, char *psz_subtitle )
{
    int i_mask = 0;
    int i_align;
    int i_x, i_y;

    i_mask = ParsePositionAttributeList( psz_subtitle, &i_align, &i_x, &i_y );

    if( i_mask & ATTRIBUTE_ALIGNMENT )
        p_region->i_align = i_align;





    if( i_mask & ATTRIBUTE_X )
        p_region->i_x = i_x;
    else if( i_mask & ATTRIBUTE_X_PERCENT )
        p_region->i_x = 0;

    if( i_mask & ATTRIBUTE_Y )
        p_region->i_y = i_y;
    else if( i_mask & ATTRIBUTE_Y_PERCENT )
        p_region->i_y = 0;
}
