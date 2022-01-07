
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt ;
typedef int FT_Long ;
typedef int FT_Error ;
typedef int FT_Char ;
typedef int FT_Byte ;


 int FT_ERROR (char*) ;
 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int Invalid_Table ;
 int PFR_CHECK (int) ;
 void* PFR_NEXT_BYTE (int*) ;
 int PFR_NEXT_INT8 (int*) ;
 int PFR_NEXT_LONG (int*) ;
 int PFR_NEXT_SHORT (int*) ;
 int PFR_NEXT_USHORT (int*) ;

__attribute__((used)) static FT_Error
  pfr_load_bitmap_metrics( FT_Byte** pdata,
                           FT_Byte* limit,
                           FT_Long scaled_advance,
                           FT_Long *axpos,
                           FT_Long *aypos,
                           FT_UInt *axsize,
                           FT_UInt *aysize,
                           FT_Long *aadvance,
                           FT_UInt *aformat )
  {
    FT_Error error = FT_Err_Ok;
    FT_Byte flags;
    FT_Byte b;
    FT_Byte* p = *pdata;
    FT_Long xpos, ypos, advance;
    FT_UInt xsize, ysize;


    PFR_CHECK( 1 );
    flags = PFR_NEXT_BYTE( p );

    xpos = 0;
    ypos = 0;
    xsize = 0;
    ysize = 0;
    advance = 0;

    switch ( flags & 3 )
    {
    case 0:
      PFR_CHECK( 1 );
      b = PFR_NEXT_BYTE( p );
      xpos = (FT_Char)b >> 4;
      ypos = ( (FT_Char)( b << 4 ) ) >> 4;
      break;

    case 1:
      PFR_CHECK( 2 );
      xpos = PFR_NEXT_INT8( p );
      ypos = PFR_NEXT_INT8( p );
      break;

    case 2:
      PFR_CHECK( 4 );
      xpos = PFR_NEXT_SHORT( p );
      ypos = PFR_NEXT_SHORT( p );
      break;

    case 3:
      PFR_CHECK( 6 );
      xpos = PFR_NEXT_LONG( p );
      ypos = PFR_NEXT_LONG( p );
      break;

    default:
      ;
    }

    flags >>= 2;
    switch ( flags & 3 )
    {
    case 0:

      xsize = 0;
      ysize = 0;
      break;

    case 1:
      PFR_CHECK( 1 );
      b = PFR_NEXT_BYTE( p );
      xsize = ( b >> 4 ) & 0xF;
      ysize = b & 0xF;
      break;

    case 2:
      PFR_CHECK( 2 );
      xsize = PFR_NEXT_BYTE( p );
      ysize = PFR_NEXT_BYTE( p );
      break;

    case 3:
      PFR_CHECK( 4 );
      xsize = PFR_NEXT_USHORT( p );
      ysize = PFR_NEXT_USHORT( p );
      break;

    default:
      ;
    }

    flags >>= 2;
    switch ( flags & 3 )
    {
    case 0:
      advance = scaled_advance;
      break;

    case 1:
      PFR_CHECK( 1 );
      advance = PFR_NEXT_INT8( p ) * 256;
      break;

    case 2:
      PFR_CHECK( 2 );
      advance = PFR_NEXT_SHORT( p );
      break;

    case 3:
      PFR_CHECK( 3 );
      advance = PFR_NEXT_LONG( p );
      break;

    default:
      ;
    }

    *axpos = xpos;
    *aypos = ypos;
    *axsize = xsize;
    *aysize = ysize;
    *aadvance = advance;
    *aformat = flags >> 2;
    *pdata = p;

  Exit:
    return error;

  Too_Short:
    error = FT_THROW( Invalid_Table );
    FT_ERROR(( "pfr_load_bitmap_metrics: invalid glyph data\n" ));
    goto Exit;
  }
