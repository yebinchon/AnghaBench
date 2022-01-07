
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rows; scalar_t__ width; } ;
typedef int PFR_BitWriterRec ;
typedef int FT_UInt ;
typedef int FT_Error ;
typedef int FT_Byte ;
typedef int FT_Bool ;
typedef TYPE_1__ FT_Bitmap ;


 int FT_Err_Ok ;
 int pfr_bitwriter_decode_bytes (int *,int *,int *) ;
 int pfr_bitwriter_decode_rle1 (int *,int *,int *) ;
 int pfr_bitwriter_decode_rle2 (int *,int *,int *) ;
 int pfr_bitwriter_init (int *,TYPE_1__*,int ) ;

__attribute__((used)) static FT_Error
  pfr_load_bitmap_bits( FT_Byte* p,
                        FT_Byte* limit,
                        FT_UInt format,
                        FT_Bool decreasing,
                        FT_Bitmap* target )
  {
    FT_Error error = FT_Err_Ok;
    PFR_BitWriterRec writer;


    if ( target->rows > 0 && target->width > 0 )
    {
      pfr_bitwriter_init( &writer, target, decreasing );

      switch ( format )
      {
      case 0:
        pfr_bitwriter_decode_bytes( &writer, p, limit );
        break;

      case 1:
        pfr_bitwriter_decode_rle1( &writer, p, limit );
        break;

      case 2:
        pfr_bitwriter_decode_rle2( &writer, p, limit );
        break;

      default:
        ;
      }
    }

    return error;
  }
