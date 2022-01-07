
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* black_PRaster ;
struct TYPE_5__ {int memory; } ;
typedef int FT_Memory ;
typedef int FT_Error ;


 int FT_NEW (TYPE_1__*) ;
 int ft_black_init (TYPE_1__*) ;

__attribute__((used)) static int
  ft_black_new( FT_Memory memory,
                black_PRaster *araster )
  {
    FT_Error error;
    black_PRaster raster = ((void*)0);


    *araster = 0;
    if ( !FT_NEW( raster ) )
    {
      raster->memory = memory;
      ft_black_init( raster );

      *araster = raster;
    }

    return error;
  }
