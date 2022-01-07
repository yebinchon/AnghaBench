
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* lcd_geometry; } ;
struct TYPE_8__ {TYPE_7__* library; } ;
struct TYPE_12__ {int raster; TYPE_3__* clazz; TYPE_1__ root; } ;
struct TYPE_11__ {int x; scalar_t__ y; } ;
struct TYPE_10__ {TYPE_2__* raster_class; } ;
struct TYPE_9__ {int (* raster_reset ) (int ,int *,int ) ;} ;
typedef TYPE_4__ FT_Vector ;
typedef TYPE_5__* FT_Renderer ;
typedef int FT_Error ;


 int FT_LCD_FILTER_DEFAULT ;
 int FT_Library_SetLcdFilter (TYPE_7__*,int ) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static FT_Error
  ft_smooth_init( FT_Renderer render )
  {



    FT_Vector* sub = render->root.library->lcd_geometry;



    sub[0].x = -21;
    sub[0].y = 0;
    sub[1].x = 0;
    sub[1].y = 0;
    sub[2].x = 21;
    sub[2].y = 0;







    render->clazz->raster_class->raster_reset( render->raster, ((void*)0), 0 );

    return 0;
  }
