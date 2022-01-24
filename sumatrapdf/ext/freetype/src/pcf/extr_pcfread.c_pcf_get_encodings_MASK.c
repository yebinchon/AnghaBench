#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * cursor; } ;
struct TYPE_16__ {int firstCol; int lastCol; int firstRow; int lastRow; int defaultChar; int* offset; } ;
struct TYPE_14__ {int /*<<< orphan*/  count; int /*<<< orphan*/  tables; } ;
struct TYPE_15__ {int nmetrics; int /*<<< orphan*/ * metrics; TYPE_1__ toc; TYPE_3__ enc; } ;
struct TYPE_13__ {int /*<<< orphan*/  memory; } ;
typedef  int /*<<< orphan*/  PCF_MetricRec ;
typedef  TYPE_2__* PCF_Face ;
typedef  TYPE_3__* PCF_Enc ;
typedef  int FT_UShort ;
typedef  int FT_ULong ;
typedef  TYPE_4__* FT_Stream ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  scalar_t__ FT_Error ;
typedef  int /*<<< orphan*/  FT_Byte ;

/* Variables and functions */
 TYPE_11__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  Invalid_File_Format ; 
 int /*<<< orphan*/  Invalid_Table ; 
 scalar_t__ MSBFirst ; 
 int /*<<< orphan*/  PCF_BDF_ENCODINGS ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  PCF_DEFAULT_FORMAT ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcf_enc_header ; 
 int /*<<< orphan*/  pcf_enc_msb_header ; 
 scalar_t__ FUNC17 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static FT_Error
  FUNC18( FT_Stream  stream,
                     PCF_Face   face )
  {
    FT_Error    error;
    FT_Memory   memory = FUNC0( face )->memory;
    FT_ULong    format, size;
    PCF_Enc     enc = &face->enc;
    FT_ULong    nencoding;
    FT_UShort*  offset;
    FT_UShort   defaultCharRow, defaultCharCol;
    FT_UShort   encodingOffset, defaultCharEncodingOffset;
    FT_UShort   i, j;
    FT_Byte*    pos;


    error = FUNC17( stream,
                                    face->toc.tables,
                                    face->toc.count,
                                    PCF_BDF_ENCODINGS,
                                    &format,
                                    &size );
    if ( error )
      goto Bail;

    if ( FUNC7( format ) )
      goto Bail;

    FUNC13(( "pcf_get_encodings:\n"
                "  format: 0x%lX (%s)\n",
                format,
                FUNC15( format ) == MSBFirst ? "MSB" : "LSB" ));

    if ( !FUNC16( format, PCF_DEFAULT_FORMAT ) &&
         !FUNC16( format, PCF_BDF_ENCODINGS )  )
      return FUNC11( Invalid_File_Format );

    if ( FUNC15( format ) == MSBFirst )
    {
      if ( FUNC8( pcf_enc_msb_header, enc ) )
        goto Bail;
    }
    else
    {
      if ( FUNC8( pcf_enc_header, enc ) )
        goto Bail;
    }

    FUNC13(( "  firstCol 0x%X, lastCol 0x%X\n"
                "  firstRow 0x%X, lastRow 0x%X\n"
                "  defaultChar 0x%X\n",
                enc->firstCol, enc->lastCol,
                enc->firstRow, enc->lastRow,
                enc->defaultChar ));

    /* sanity checks; we limit numbers of rows and columns to 256 */
    if ( enc->firstCol > enc->lastCol ||
         enc->lastCol  > 0xFF         ||
         enc->firstRow > enc->lastRow ||
         enc->lastRow  > 0xFF         )
      return FUNC11( Invalid_Table );

    nencoding = (FT_ULong)( enc->lastCol - enc->firstCol + 1 ) *
                (FT_ULong)( enc->lastRow - enc->firstRow + 1 );

    if ( FUNC4( enc->offset, nencoding ) )
      goto Bail;

    error = FUNC9( stream, 2 * nencoding );
    if ( error )
      goto Exit;

    FUNC14(( "\n" ));

    defaultCharRow = enc->defaultChar >> 8;
    defaultCharCol = enc->defaultChar & 0xFF;

    /* validate default character */
    if ( defaultCharRow < enc->firstRow ||
         defaultCharRow > enc->lastRow  ||
         defaultCharCol < enc->firstCol ||
         defaultCharCol > enc->lastCol  )
    {
      enc->defaultChar = enc->firstRow * 256U + enc->firstCol;
      FUNC12(( "pcf_get_encodings:"
                  " Invalid default character set to %u\n",
                  enc->defaultChar ));

      defaultCharRow = enc->firstRow;
      defaultCharCol = enc->firstCol;
    }

    /* FreeType mandates that glyph index 0 is the `undefined glyph',  */
    /* which PCF calls the `default character'.  For this reason, we   */
    /* swap the positions of glyph index 0 and the index corresponding */
    /* to `defaultChar' in case they are different.                    */

    /* `stream->cursor' still points at the beginning of the frame; */
    /* we can thus easily get the offset to the default character   */
    pos = stream->cursor +
            2 * ( ( defaultCharRow - enc->firstRow ) *
                  ( enc->lastCol - enc->firstCol + 1 ) +
                    defaultCharCol - enc->firstCol       );

    if ( FUNC15( format ) == MSBFirst )
      defaultCharEncodingOffset = FUNC5( pos );
    else
      defaultCharEncodingOffset = FUNC6( pos );

    if ( defaultCharEncodingOffset >= face->nmetrics )
    {
      FUNC12(( "pcf_get_encodings:"
                  " Invalid glyph index for default character,"
                  " setting to zero\n" ));
      defaultCharEncodingOffset = 0;
    }

    if ( defaultCharEncodingOffset )
    {
      /* do the swapping */
      PCF_MetricRec  tmp = face->metrics[defaultCharEncodingOffset];


      face->metrics[defaultCharEncodingOffset] = face->metrics[0];
      face->metrics[0]                         = tmp;
    }

    offset = enc->offset;
    for ( i = enc->firstRow; i <= enc->lastRow; i++ )
    {
      for ( j = enc->firstCol; j <= enc->lastCol; j++ )
      {
        /* X11's reference implementation uses the equivalent to  */
        /* `FT_GET_SHORT', however PCF fonts with more than 32768 */
        /* characters (e.g., `unifont.pcf') clearly show that an  */
        /* unsigned value is needed.                              */
        if ( FUNC15( format ) == MSBFirst )
          encodingOffset = FUNC2();
        else
          encodingOffset = FUNC3();

        if ( encodingOffset != 0xFFFFU )
        {
          if ( encodingOffset == defaultCharEncodingOffset )
            encodingOffset = 0;
          else if ( encodingOffset == 0 )
            encodingOffset = defaultCharEncodingOffset;
        }

        *offset++ = encodingOffset;
      }
    }
    FUNC10( stream );

    return error;

  Exit:
    FUNC1( enc->offset );

  Bail:
    return error;
  }