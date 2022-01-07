
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_locations; } ;
typedef TYPE_1__* TT_Face ;
typedef scalar_t__ FT_ULong ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Face ;
typedef int FT_Error ;
typedef int FT_Bool ;


 int FALSE ;
 int FT_Get_Glyph_Name (int ,scalar_t__,char*,int) ;
 int TRUE ;
 int ft_strncmp (char*,char*,int) ;
 int tt_face_get_location (TYPE_1__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static FT_Bool
  tt_check_single_notdef( FT_Face ttface )
  {
    FT_Bool result = FALSE;

    TT_Face face = (TT_Face)ttface;
    FT_UInt asize;
    FT_ULong i;
    FT_ULong glyph_index = 0;
    FT_UInt count = 0;


    for( i = 0; i < face->num_locations; i++ )
    {
      tt_face_get_location( face, i, &asize );
      if ( asize > 0 )
      {
        count += 1;
        if ( count > 1 )
          break;
        glyph_index = i;
      }
    }


    if ( count == 1 )
    {
      if ( glyph_index == 0 )
        result = TRUE;
      else
      {

        FT_Error error;
        char buf[8];


        error = FT_Get_Glyph_Name( ttface, glyph_index, buf, 8 );
        if ( !error &&
             buf[0] == '.' && !ft_strncmp( buf, ".notdef", 8 ) )
          result = TRUE;
      }
    }

    return result;
  }
