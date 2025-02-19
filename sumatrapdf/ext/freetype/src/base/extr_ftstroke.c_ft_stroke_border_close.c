
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; unsigned int num_points; int movable; int * tags; int * points; } ;
typedef int FT_Vector ;
typedef unsigned int FT_UInt ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef int FT_Byte ;
typedef scalar_t__ FT_Bool ;


 int FALSE ;
 int FT_ASSERT (int) ;
 int FT_STROKE_TAG_BEGIN ;
 int FT_STROKE_TAG_END ;

__attribute__((used)) static void
  ft_stroke_border_close( FT_StrokeBorder border,
                          FT_Bool reverse )
  {
    FT_UInt start = (FT_UInt)border->start;
    FT_UInt count = border->num_points;


    FT_ASSERT( border->start >= 0 );


    if ( count <= start + 1U )
      border->num_points = start;
    else
    {


      border->num_points = --count;
      border->points[start] = border->points[count];
      border->tags[start] = border->tags[count];

      if ( reverse )
      {

        {
          FT_Vector* vec1 = border->points + start + 1;
          FT_Vector* vec2 = border->points + count - 1;


          for ( ; vec1 < vec2; vec1++, vec2-- )
          {
            FT_Vector tmp;


            tmp = *vec1;
            *vec1 = *vec2;
            *vec2 = tmp;
          }
        }


        {
          FT_Byte* tag1 = border->tags + start + 1;
          FT_Byte* tag2 = border->tags + count - 1;


          for ( ; tag1 < tag2; tag1++, tag2-- )
          {
            FT_Byte tmp;


            tmp = *tag1;
            *tag1 = *tag2;
            *tag2 = tmp;
          }
        }
      }

      border->tags[start ] |= FT_STROKE_TAG_BEGIN;
      border->tags[count - 1] |= FT_STROKE_TAG_END;
    }

    border->start = -1;
    border->movable = FALSE;
  }
