
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int raster; TYPE_2__* clazz; } ;
struct TYPE_6__ {TYPE_1__* raster_class; } ;
struct TYPE_5__ {int (* raster_reset ) (int ,int *,int ) ;} ;
typedef TYPE_3__* FT_Renderer ;
typedef int FT_Error ;


 int stub1 (int ,int *,int ) ;

__attribute__((used)) static FT_Error
  ft_smooth_init( FT_Renderer render )
  {
    render->clazz->raster_class->raster_reset( render->raster, ((void*)0), 0 );

    return 0;
  }
