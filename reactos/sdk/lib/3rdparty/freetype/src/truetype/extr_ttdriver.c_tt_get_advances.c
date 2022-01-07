
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int variation_support; } ;
typedef TYPE_1__* TT_Face ;
typedef int FT_UShort ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Short ;
typedef int FT_Int32 ;
typedef int FT_Fixed ;
typedef int FT_Face ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 scalar_t__ FT_IS_NAMED_INSTANCE (int ) ;
 scalar_t__ FT_IS_VARIATION (int ) ;
 int FT_LOAD_VERTICAL_LAYOUT ;
 int FT_THROW (int ) ;
 int TT_FACE_FLAG_VAR_HADVANCE ;
 int TT_FACE_FLAG_VAR_VADVANCE ;
 int TT_Get_HMetrics (TYPE_1__*,scalar_t__,int *,int *) ;
 int TT_Get_VMetrics (TYPE_1__*,scalar_t__,int ,int *,int *) ;
 int Unimplemented_Feature ;

__attribute__((used)) static FT_Error
  tt_get_advances( FT_Face ttface,
                   FT_UInt start,
                   FT_UInt count,
                   FT_Int32 flags,
                   FT_Fixed *advances )
  {
    FT_UInt nn;
    TT_Face face = (TT_Face)ttface;




    if ( flags & FT_LOAD_VERTICAL_LAYOUT )
    {







      for ( nn = 0; nn < count; nn++ )
      {
        FT_Short tsb;
        FT_UShort ah;



        TT_Get_VMetrics( face, start + nn, 0, &tsb, &ah );
        advances[nn] = ah;
      }
    }
    else
    {







      for ( nn = 0; nn < count; nn++ )
      {
        FT_Short lsb;
        FT_UShort aw;


        TT_Get_HMetrics( face, start + nn, &lsb, &aw );
        advances[nn] = aw;
      }
    }

    return FT_Err_Ok;
  }
