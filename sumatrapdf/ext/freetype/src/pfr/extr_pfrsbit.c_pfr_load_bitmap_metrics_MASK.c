#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int FT_UInt ;
typedef  int FT_Long ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int FT_Char ;
typedef  int FT_Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Invalid_Table ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int*) ; 
 int FUNC6 (int*) ; 
 int FUNC7 (int*) ; 

__attribute__((used)) static FT_Error
  FUNC8( FT_Byte**  pdata,
                           FT_Byte*   limit,
                           FT_Long    scaled_advance,
                           FT_Long   *axpos,
                           FT_Long   *aypos,
                           FT_UInt   *axsize,
                           FT_UInt   *aysize,
                           FT_Long   *aadvance,
                           FT_UInt   *aformat )
  {
    FT_Error  error = FT_Err_Ok;
    FT_Byte   flags;
    FT_Byte   b;
    FT_Byte*  p = *pdata;
    FT_Long   xpos, ypos, advance;
    FT_UInt   xsize, ysize;


    FUNC2( 1 );
    flags = FUNC3( p );

    xpos    = 0;
    ypos    = 0;
    xsize   = 0;
    ysize   = 0;
    advance = 0;

    switch ( flags & 3 )
    {
    case 0:
      FUNC2( 1 );
      b    = FUNC3( p );
      xpos = (FT_Char)b >> 4;
      ypos = ( (FT_Char)( b << 4 ) ) >> 4;
      break;

    case 1:
      FUNC2( 2 );
      xpos = FUNC4( p );
      ypos = FUNC4( p );
      break;

    case 2:
      FUNC2( 4 );
      xpos = FUNC6( p );
      ypos = FUNC6( p );
      break;

    case 3:
      FUNC2( 6 );
      xpos = FUNC5( p );
      ypos = FUNC5( p );
      break;

    default:
      ;
    }

    flags >>= 2;
    switch ( flags & 3 )
    {
    case 0:
      /* blank image */
      xsize = 0;
      ysize = 0;
      break;

    case 1:
      FUNC2( 1 );
      b     = FUNC3( p );
      xsize = ( b >> 4 ) & 0xF;
      ysize = b & 0xF;
      break;

    case 2:
      FUNC2( 2 );
      xsize = FUNC3( p );
      ysize = FUNC3( p );
      break;

    case 3:
      FUNC2( 4 );
      xsize = FUNC7( p );
      ysize = FUNC7( p );
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
      FUNC2( 1 );
      advance = FUNC4( p ) * 256;
      break;

    case 2:
      FUNC2( 2 );
      advance = FUNC6( p );
      break;

    case 3:
      FUNC2( 3 );
      advance = FUNC5( p );
      break;

    default:
      ;
    }

    *axpos    = xpos;
    *aypos    = ypos;
    *axsize   = xsize;
    *aysize   = ysize;
    *aadvance = advance;
    *aformat  = flags >> 2;
    *pdata    = p;

  Exit:
    return error;

  Too_Short:
    error = FUNC1( Invalid_Table );
    FUNC0(( "pfr_load_bitmap_metrics: invalid glyph data\n" ));
    goto Exit;
  }