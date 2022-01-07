
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* FT_Raster ;


 int FT_UNUSED (void*) ;

__attribute__((used)) static int
  gray_raster_set_mode( FT_Raster raster,
                        unsigned long mode,
                        void* args )
  {
    FT_UNUSED( raster );
    FT_UNUSED( mode );
    FT_UNUSED( args );


    return 0;
  }
