
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_charmaps; int ** charmaps; } ;
typedef int FT_Memory ;
typedef size_t FT_Int ;
typedef TYPE_1__* FT_Face ;
typedef int FT_CMap ;


 int FT_CMAP (int *) ;
 int FT_FREE (int **) ;
 int ft_cmap_done_internal (int ) ;

__attribute__((used)) static void
  destroy_charmaps( FT_Face face,
                    FT_Memory memory )
  {
    FT_Int n;


    if ( !face )
      return;

    for ( n = 0; n < face->num_charmaps; n++ )
    {
      FT_CMap cmap = FT_CMAP( face->charmaps[n] );


      ft_cmap_done_internal( cmap );

      face->charmaps[n] = ((void*)0);
    }

    FT_FREE( face->charmaps );
    face->num_charmaps = 0;
  }
