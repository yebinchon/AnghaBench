
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ platform_id; scalar_t__ encoding_id; } ;
struct TYPE_7__ {int num_charmaps; TYPE_2__** charmaps; } ;
typedef TYPE_1__* FT_Face ;
typedef TYPE_2__* FT_CharMap ;


 int FT_ASSERT (TYPE_1__*) ;
 int FT_Get_CMap_Format (TYPE_2__*) ;
 scalar_t__ TT_APPLE_ID_VARIANT_SELECTOR ;
 scalar_t__ TT_PLATFORM_APPLE_UNICODE ;

__attribute__((used)) static FT_CharMap
  find_variant_selector_charmap( FT_Face face )
  {
    FT_CharMap* first;
    FT_CharMap* end;
    FT_CharMap* cur;



    FT_ASSERT( face );

    first = face->charmaps;

    if ( !first )
      return ((void*)0);

    end = first + face->num_charmaps;

    for ( cur = first; cur < end; cur++ )
    {
      if ( cur[0]->platform_id == TT_PLATFORM_APPLE_UNICODE &&
           cur[0]->encoding_id == TT_APPLE_ID_VARIANT_SELECTOR &&
           FT_Get_CMap_Format( cur[0] ) == 14 )
        return cur[0];
    }

    return ((void*)0);
  }
