
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int version; int file_size; int file_type; scalar_t__ color_table_offset; scalar_t__ C_space; scalar_t__ B_space; scalar_t__ A_space; scalar_t__ flags; } ;
struct TYPE_6__ {int fnt_frame; int offset; TYPE_1__ header; } ;
typedef TYPE_1__* FT_WinFNT_Header ;
typedef int FT_UInt ;
typedef int FT_Stream ;
typedef int FT_Error ;
typedef scalar_t__ FT_Bool ;
typedef TYPE_2__* FNT_Font ;


 scalar_t__ FT_BOOL (int) ;
 scalar_t__ FT_FRAME_EXTRACT (int,int ) ;
 scalar_t__ FT_STREAM_READ_FIELDS (int ,TYPE_1__*) ;
 scalar_t__ FT_STREAM_SEEK (int ) ;
 int FT_THROW (int ) ;
 int FT_TRACE2 (char*) ;
 int Unknown_File_Format ;
 int winfnt_header_fields ;

__attribute__((used)) static FT_Error
  fnt_font_load( FNT_Font font,
                 FT_Stream stream )
  {
    FT_Error error;
    FT_WinFNT_Header header = &font->header;
    FT_Bool new_format;
    FT_UInt size;



    if ( FT_STREAM_SEEK( font->offset ) ||
         FT_STREAM_READ_FIELDS( winfnt_header_fields, header ) )
      goto Exit;


    if ( header->version != 0x200 &&
         header->version != 0x300 )
    {
      FT_TRACE2(( "  not a Windows FNT file\n" ));
      error = FT_THROW( Unknown_File_Format );
      goto Exit;
    }

    new_format = FT_BOOL( font->header.version == 0x300 );
    size = new_format ? 148 : 118;

    if ( header->file_size < size )
    {
      FT_TRACE2(( "  not a Windows FNT file\n" ));
      error = FT_THROW( Unknown_File_Format );
      goto Exit;
    }


    if ( header->version == 0x200 )
    {
      header->flags = 0;
      header->A_space = 0;
      header->B_space = 0;
      header->C_space = 0;

      header->color_table_offset = 0;
    }

    if ( header->file_type & 1 )
    {
      FT_TRACE2(( "[can't handle vector FNT fonts]\n" ));
      error = FT_THROW( Unknown_File_Format );
      goto Exit;
    }


    if ( FT_STREAM_SEEK( font->offset ) ||
         FT_FRAME_EXTRACT( header->file_size, font->fnt_frame ) )
      goto Exit;

  Exit:
    return error;
  }
