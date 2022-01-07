
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__* font; } ;
struct TYPE_17__ {int y_ppem; } ;
struct TYPE_16__ {TYPE_1__* face; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {int pixel_height; } ;
struct TYPE_13__ {TYPE_3__ header; } ;
struct TYPE_12__ {TYPE_6__* available_sizes; } ;
typedef TYPE_3__* FT_WinFNT_Header ;
typedef TYPE_4__* FT_Size_Request ;
typedef TYPE_5__* FT_Size ;
typedef int FT_Long ;
typedef scalar_t__ FT_Error ;
typedef TYPE_6__ FT_Bitmap_Size ;
typedef TYPE_7__* FNT_Face ;


 scalar_t__ FNT_Size_Select (TYPE_5__*,int ) ;
 scalar_t__ FT_ERR (int ) ;
 scalar_t__ FT_Err_Ok ;
 int FT_REQUEST_HEIGHT (TYPE_4__*) ;


 scalar_t__ FT_THROW (int ) ;
 int Invalid_Pixel_Size ;
 int Unimplemented_Feature ;

__attribute__((used)) static FT_Error
  FNT_Size_Request( FT_Size size,
                    FT_Size_Request req )
  {
    FNT_Face face = (FNT_Face)size->face;
    FT_WinFNT_Header header = &face->font->header;
    FT_Bitmap_Size* bsize = size->face->available_sizes;
    FT_Error error = FT_ERR( Invalid_Pixel_Size );
    FT_Long height;


    height = FT_REQUEST_HEIGHT( req );
    height = ( height + 32 ) >> 6;

    switch ( req->type )
    {
    case 129:
      if ( height == ( ( bsize->y_ppem + 32 ) >> 6 ) )
        error = FT_Err_Ok;
      break;

    case 128:
      if ( height == header->pixel_height )
        error = FT_Err_Ok;
      break;

    default:
      error = FT_THROW( Unimplemented_Feature );
      break;
    }

    if ( error )
      return error;
    else
      return FNT_Size_Select( size, 0 );
  }
