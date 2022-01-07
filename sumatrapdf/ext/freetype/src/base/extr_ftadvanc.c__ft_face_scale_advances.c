
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* size; } ;
struct TYPE_5__ {int x_scale; int y_scale; } ;
struct TYPE_6__ {TYPE_1__ metrics; } ;
typedef size_t FT_UInt ;
typedef int FT_Int32 ;
typedef int FT_Fixed ;
typedef TYPE_3__* FT_Face ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 int FT_LOAD_NO_SCALE ;
 int FT_LOAD_VERTICAL_LAYOUT ;
 int FT_MulDiv (int ,int ,int) ;
 int FT_THROW (int ) ;
 int Invalid_Size_Handle ;

__attribute__((used)) static FT_Error
  _ft_face_scale_advances( FT_Face face,
                           FT_Fixed* advances,
                           FT_UInt count,
                           FT_Int32 flags )
  {
    FT_Fixed scale;
    FT_UInt nn;


    if ( flags & FT_LOAD_NO_SCALE )
      return FT_Err_Ok;

    if ( !face->size )
      return FT_THROW( Invalid_Size_Handle );

    if ( flags & FT_LOAD_VERTICAL_LAYOUT )
      scale = face->size->metrics.y_scale;
    else
      scale = face->size->metrics.x_scale;




    for ( nn = 0; nn < count; nn++ )
      advances[nn] = FT_MulDiv( advances[nn], scale, 64 );

    return FT_Err_Ok;
  }
