
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ encoding; scalar_t__ platform_id; scalar_t__ encoding_id; } ;
struct TYPE_5__ {int num_charmaps; TYPE_2__* charmap; TYPE_2__** charmaps; } ;
typedef TYPE_1__* FT_Face ;
typedef int FT_Error ;
typedef TYPE_2__* FT_CharMap ;


 int FT_ASSERT (TYPE_1__*) ;
 scalar_t__ FT_ENCODING_UNICODE ;
 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int Invalid_CharMap_Handle ;
 scalar_t__ TT_APPLE_ID_UNICODE_32 ;
 scalar_t__ TT_MS_ID_UCS_4 ;
 scalar_t__ TT_PLATFORM_APPLE_UNICODE ;
 scalar_t__ TT_PLATFORM_MICROSOFT ;

__attribute__((used)) static FT_Error
  find_unicode_charmap( FT_Face face )
  {
    FT_CharMap* first;
    FT_CharMap* cur;



    FT_ASSERT( face );

    first = face->charmaps;

    if ( !first )
      return FT_THROW( Invalid_CharMap_Handle );
    cur = first + face->num_charmaps;

    for ( ; --cur >= first; )
    {
      if ( cur[0]->encoding == FT_ENCODING_UNICODE )
      {


        if ( ( cur[0]->platform_id == TT_PLATFORM_MICROSOFT &&
               cur[0]->encoding_id == TT_MS_ID_UCS_4 ) ||
             ( cur[0]->platform_id == TT_PLATFORM_APPLE_UNICODE &&
               cur[0]->encoding_id == TT_APPLE_ID_UNICODE_32 ) )
        {
          face->charmap = cur[0];
          return FT_Err_Ok;
        }
      }
    }



    cur = first + face->num_charmaps;

    for ( ; --cur >= first; )
    {
      if ( cur[0]->encoding == FT_ENCODING_UNICODE )
      {
        face->charmap = cur[0];
        return FT_Err_Ok;
      }
    }

    return FT_THROW( Invalid_CharMap_Handle );
  }
