
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int points; int n_points; int n_contours; scalar_t__* contours; scalar_t__ tags; } ;
struct TYPE_6__ {scalar_t__ num_points; int* tags; int points; } ;
typedef scalar_t__ FT_UInt ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef scalar_t__ FT_Short ;
typedef TYPE_2__ FT_Outline ;
typedef int FT_Byte ;


 int FT_ARRAY_COPY (int,int ,scalar_t__) ;
 int FT_ASSERT (int) ;
 int FT_CURVE_TAG_CONIC ;
 int FT_CURVE_TAG_CUBIC ;
 int FT_CURVE_TAG_ON ;
 scalar_t__ FT_Outline_Check (TYPE_2__*) ;
 int FT_STROKE_TAG_CUBIC ;
 int FT_STROKE_TAG_END ;
 int FT_STROKE_TAG_ON ;

__attribute__((used)) static void
  ft_stroke_border_export( FT_StrokeBorder border,
                           FT_Outline* outline )
  {

    if ( border->num_points )
      FT_ARRAY_COPY( outline->points + outline->n_points,
                     border->points,
                     border->num_points );


    {
      FT_UInt count = border->num_points;
      FT_Byte* read = border->tags;
      FT_Byte* write = (FT_Byte*)outline->tags + outline->n_points;


      for ( ; count > 0; count--, read++, write++ )
      {
        if ( *read & FT_STROKE_TAG_ON )
          *write = FT_CURVE_TAG_ON;
        else if ( *read & FT_STROKE_TAG_CUBIC )
          *write = FT_CURVE_TAG_CUBIC;
        else
          *write = FT_CURVE_TAG_CONIC;
      }
    }


    {
      FT_UInt count = border->num_points;
      FT_Byte* tags = border->tags;
      FT_Short* write = outline->contours + outline->n_contours;
      FT_Short idx = (FT_Short)outline->n_points;


      for ( ; count > 0; count--, tags++, idx++ )
      {
        if ( *tags & FT_STROKE_TAG_END )
        {
          *write++ = idx;
          outline->n_contours++;
        }
      }
    }

    outline->n_points += (short)border->num_points;

    FT_ASSERT( FT_Outline_Check( outline ) == 0 );
  }
