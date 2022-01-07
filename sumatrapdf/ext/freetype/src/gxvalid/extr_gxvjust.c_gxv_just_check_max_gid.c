
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* face; } ;
struct TYPE_4__ {int num_glyphs; } ;
typedef TYPE_2__* GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_String ;


 int FT_INVALID_GLYPH_ID ;
 int FT_UNUSED (int const*) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_just_check_max_gid( FT_UShort gid,
                          const FT_String* msg_tag,
                          GXV_Validator gxvalid )
  {
    FT_UNUSED( msg_tag );

    if ( gid < gxvalid->face->num_glyphs )
      return;

    GXV_TRACE(( "just table includes too large %s"
                " GID=%d > %d (in maxp)\n",
                msg_tag, gid, gxvalid->face->num_glyphs ));
    GXV_SET_ERR_IF_PARANOID( FT_INVALID_GLYPH_ID );
  }
