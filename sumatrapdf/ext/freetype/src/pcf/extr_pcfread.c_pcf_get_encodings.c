
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_17__ {int * cursor; } ;
struct TYPE_16__ {int firstCol; int lastCol; int firstRow; int lastRow; int defaultChar; int* offset; } ;
struct TYPE_14__ {int count; int tables; } ;
struct TYPE_15__ {int nmetrics; int * metrics; TYPE_1__ toc; TYPE_3__ enc; } ;
struct TYPE_13__ {int memory; } ;
typedef int PCF_MetricRec ;
typedef TYPE_2__* PCF_Face ;
typedef TYPE_3__* PCF_Enc ;
typedef int FT_UShort ;
typedef int FT_ULong ;
typedef TYPE_4__* FT_Stream ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Error ;
typedef int FT_Byte ;


 TYPE_11__* FT_FACE (TYPE_2__*) ;
 int FT_FREE (int*) ;
 int FT_GET_USHORT () ;
 int FT_GET_USHORT_LE () ;
 scalar_t__ FT_NEW_ARRAY (int*,int) ;
 int FT_PEEK_USHORT (int *) ;
 int FT_PEEK_USHORT_LE (int *) ;
 scalar_t__ FT_READ_ULONG_LE (int) ;
 scalar_t__ FT_STREAM_READ_FIELDS (int ,TYPE_3__*) ;
 scalar_t__ FT_Stream_EnterFrame (TYPE_4__*,int) ;
 int FT_Stream_ExitFrame (TYPE_4__*) ;
 scalar_t__ FT_THROW (int ) ;
 int FT_TRACE0 (char*) ;
 int FT_TRACE4 (char*) ;
 int FT_TRACE5 (char*) ;
 int Invalid_File_Format ;
 int Invalid_Table ;
 scalar_t__ MSBFirst ;
 int PCF_BDF_ENCODINGS ;
 scalar_t__ PCF_BYTE_ORDER (int) ;
 int PCF_DEFAULT_FORMAT ;
 int PCF_FORMAT_MATCH (int,int ) ;
 int pcf_enc_header ;
 int pcf_enc_msb_header ;
 scalar_t__ pcf_seek_to_table_type (TYPE_4__*,int ,int ,int ,int*,int*) ;

__attribute__((used)) static FT_Error
  pcf_get_encodings( FT_Stream stream,
                     PCF_Face face )
  {
    FT_Error error;
    FT_Memory memory = FT_FACE( face )->memory;
    FT_ULong format, size;
    PCF_Enc enc = &face->enc;
    FT_ULong nencoding;
    FT_UShort* offset;
    FT_UShort defaultCharRow, defaultCharCol;
    FT_UShort encodingOffset, defaultCharEncodingOffset;
    FT_UShort i, j;
    FT_Byte* pos;


    error = pcf_seek_to_table_type( stream,
                                    face->toc.tables,
                                    face->toc.count,
                                    PCF_BDF_ENCODINGS,
                                    &format,
                                    &size );
    if ( error )
      goto Bail;

    if ( FT_READ_ULONG_LE( format ) )
      goto Bail;

    FT_TRACE4(( "pcf_get_encodings:\n"
                "  format: 0x%lX (%s)\n",
                format,
                PCF_BYTE_ORDER( format ) == MSBFirst ? "MSB" : "LSB" ));

    if ( !PCF_FORMAT_MATCH( format, PCF_DEFAULT_FORMAT ) &&
         !PCF_FORMAT_MATCH( format, PCF_BDF_ENCODINGS ) )
      return FT_THROW( Invalid_File_Format );

    if ( PCF_BYTE_ORDER( format ) == MSBFirst )
    {
      if ( FT_STREAM_READ_FIELDS( pcf_enc_msb_header, enc ) )
        goto Bail;
    }
    else
    {
      if ( FT_STREAM_READ_FIELDS( pcf_enc_header, enc ) )
        goto Bail;
    }

    FT_TRACE4(( "  firstCol 0x%X, lastCol 0x%X\n"
                "  firstRow 0x%X, lastRow 0x%X\n"
                "  defaultChar 0x%X\n",
                enc->firstCol, enc->lastCol,
                enc->firstRow, enc->lastRow,
                enc->defaultChar ));


    if ( enc->firstCol > enc->lastCol ||
         enc->lastCol > 0xFF ||
         enc->firstRow > enc->lastRow ||
         enc->lastRow > 0xFF )
      return FT_THROW( Invalid_Table );

    nencoding = (FT_ULong)( enc->lastCol - enc->firstCol + 1 ) *
                (FT_ULong)( enc->lastRow - enc->firstRow + 1 );

    if ( FT_NEW_ARRAY( enc->offset, nencoding ) )
      goto Bail;

    error = FT_Stream_EnterFrame( stream, 2 * nencoding );
    if ( error )
      goto Exit;

    FT_TRACE5(( "\n" ));

    defaultCharRow = enc->defaultChar >> 8;
    defaultCharCol = enc->defaultChar & 0xFF;


    if ( defaultCharRow < enc->firstRow ||
         defaultCharRow > enc->lastRow ||
         defaultCharCol < enc->firstCol ||
         defaultCharCol > enc->lastCol )
    {
      enc->defaultChar = enc->firstRow * 256U + enc->firstCol;
      FT_TRACE0(( "pcf_get_encodings:"
                  " Invalid default character set to %u\n",
                  enc->defaultChar ));

      defaultCharRow = enc->firstRow;
      defaultCharCol = enc->firstCol;
    }
    pos = stream->cursor +
            2 * ( ( defaultCharRow - enc->firstRow ) *
                  ( enc->lastCol - enc->firstCol + 1 ) +
                    defaultCharCol - enc->firstCol );

    if ( PCF_BYTE_ORDER( format ) == MSBFirst )
      defaultCharEncodingOffset = FT_PEEK_USHORT( pos );
    else
      defaultCharEncodingOffset = FT_PEEK_USHORT_LE( pos );

    if ( defaultCharEncodingOffset >= face->nmetrics )
    {
      FT_TRACE0(( "pcf_get_encodings:"
                  " Invalid glyph index for default character,"
                  " setting to zero\n" ));
      defaultCharEncodingOffset = 0;
    }

    if ( defaultCharEncodingOffset )
    {

      PCF_MetricRec tmp = face->metrics[defaultCharEncodingOffset];


      face->metrics[defaultCharEncodingOffset] = face->metrics[0];
      face->metrics[0] = tmp;
    }

    offset = enc->offset;
    for ( i = enc->firstRow; i <= enc->lastRow; i++ )
    {
      for ( j = enc->firstCol; j <= enc->lastCol; j++ )
      {




        if ( PCF_BYTE_ORDER( format ) == MSBFirst )
          encodingOffset = FT_GET_USHORT();
        else
          encodingOffset = FT_GET_USHORT_LE();

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
    FT_Stream_ExitFrame( stream );

    return error;

  Exit:
    FT_FREE( enc->offset );

  Bail:
    return error;
  }
