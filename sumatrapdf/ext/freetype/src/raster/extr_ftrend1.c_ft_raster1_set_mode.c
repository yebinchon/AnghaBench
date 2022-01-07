
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int raster; TYPE_2__* clazz; } ;
struct TYPE_6__ {TYPE_1__* raster_class; } ;
struct TYPE_5__ {int (* raster_set_mode ) (int ,int ,int ) ;} ;
typedef int FT_ULong ;
typedef TYPE_3__* FT_Renderer ;
typedef int FT_Pointer ;
typedef int FT_Error ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static FT_Error
  ft_raster1_set_mode( FT_Renderer render,
                       FT_ULong mode_tag,
                       FT_Pointer data )
  {

    return render->clazz->raster_class->raster_set_mode( render->raster,
                                                         mode_tag,
                                                         data );
  }
