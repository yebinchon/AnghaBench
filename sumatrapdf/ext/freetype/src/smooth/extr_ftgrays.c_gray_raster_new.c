
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gray_TRaster ;
typedef TYPE_1__* gray_PRaster ;
struct TYPE_3__ {int memory; } ;
typedef scalar_t__ FT_Raster ;
typedef int FT_Memory ;
typedef int FT_Error ;


 int FT_ALLOC (TYPE_1__*,int) ;

__attribute__((used)) static int
  gray_raster_new( FT_Memory memory,
                   FT_Raster* araster )
  {
    FT_Error error;
    gray_PRaster raster = ((void*)0);


    *araster = 0;
    if ( !FT_ALLOC( raster, sizeof ( gray_TRaster ) ) )
    {
      raster->memory = memory;
      *araster = (FT_Raster)raster;
    }

    return error;
  }
