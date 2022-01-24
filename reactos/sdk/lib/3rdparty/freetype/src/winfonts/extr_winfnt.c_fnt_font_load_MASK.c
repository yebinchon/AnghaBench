#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int version; int file_size; int file_type; scalar_t__ color_table_offset; scalar_t__ C_space; scalar_t__ B_space; scalar_t__ A_space; scalar_t__ flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  fnt_frame; int /*<<< orphan*/  offset; TYPE_1__ header; } ;
typedef  TYPE_1__* FT_WinFNT_Header ;
typedef  int FT_UInt ;
typedef  int /*<<< orphan*/  FT_Stream ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  scalar_t__ FT_Bool ;
typedef  TYPE_2__* FNT_Font ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  Unknown_File_Format ; 
 int /*<<< orphan*/  winfnt_header_fields ; 

__attribute__((used)) static FT_Error
  FUNC6( FNT_Font   font,
                 FT_Stream  stream )
  {
    FT_Error          error;
    FT_WinFNT_Header  header = &font->header;
    FT_Bool           new_format;
    FT_UInt           size;


    /* first of all, read the FNT header */
    if ( FUNC3( font->offset )                        ||
         FUNC2( winfnt_header_fields, header ) )
      goto Exit;

    /* check header */
    if ( header->version != 0x200 &&
         header->version != 0x300 )
    {
      FUNC5(( "  not a Windows FNT file\n" ));
      error = FUNC4( Unknown_File_Format );
      goto Exit;
    }

    new_format = FUNC0( font->header.version == 0x300 );
    size       = new_format ? 148 : 118;

    if ( header->file_size < size )
    {
      FUNC5(( "  not a Windows FNT file\n" ));
      error = FUNC4( Unknown_File_Format );
      goto Exit;
    }

    /* Version 2 doesn't have these fields */
    if ( header->version == 0x200 )
    {
      header->flags   = 0;
      header->A_space = 0;
      header->B_space = 0;
      header->C_space = 0;

      header->color_table_offset = 0;
    }

    if ( header->file_type & 1 )
    {
      FUNC5(( "[can't handle vector FNT fonts]\n" ));
      error = FUNC4( Unknown_File_Format );
      goto Exit;
    }

    /* this is a FNT file/table; extract its frame */
    if ( FUNC3( font->offset )                         ||
         FUNC1( header->file_size, font->fnt_frame ) )
      goto Exit;

  Exit:
    return error;
  }