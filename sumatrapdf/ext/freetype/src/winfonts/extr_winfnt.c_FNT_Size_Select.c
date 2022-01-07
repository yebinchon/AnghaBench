
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* font; } ;
struct TYPE_7__ {int ascender; int descender; int max_advance; } ;
struct TYPE_10__ {TYPE_1__ metrics; int face; } ;
struct TYPE_9__ {int ascent; int pixel_height; int max_width; } ;
struct TYPE_8__ {TYPE_3__ header; } ;
typedef TYPE_3__* FT_WinFNT_Header ;
typedef int FT_ULong ;
typedef TYPE_4__* FT_Size ;
typedef int FT_Error ;
typedef TYPE_5__* FNT_Face ;


 int FT_Err_Ok ;
 int FT_Select_Metrics (int ,int ) ;
 int FT_UNUSED (int ) ;

__attribute__((used)) static FT_Error
  FNT_Size_Select( FT_Size size,
                   FT_ULong strike_index )
  {
    FNT_Face face = (FNT_Face)size->face;
    FT_WinFNT_Header header = &face->font->header;

    FT_UNUSED( strike_index );


    FT_Select_Metrics( size->face, 0 );

    size->metrics.ascender = header->ascent * 64;
    size->metrics.descender = -( header->pixel_height -
                                   header->ascent ) * 64;
    size->metrics.max_advance = header->max_width * 64;

    return FT_Err_Ok;
  }
