#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ magic; int lfanew; int resource_tab_offset; int rname_tab_offset; int machine; int number_of_sections; int size_of_optional_header; int magic32; scalar_t__ rsrc_virtual_address; int name; scalar_t__ virtual_address; int pointer_to_raw_data; int number_of_named_entries; int number_of_id_entries; int offset; int offset_to_data; int size; int /*<<< orphan*/  code_page; int /*<<< orphan*/  size_of_raw_data; int /*<<< orphan*/  rsrc_size; } ;
typedef  TYPE_2__ WinPE_RsrcDirRec ;
typedef  TYPE_2__ WinPE_RsrcDirEntryRec ;
typedef  TYPE_2__ WinPE_RsrcDataEntryRec ;
typedef  TYPE_2__ WinPE32_SectionRec ;
typedef  TYPE_2__ WinPE32_HeaderRec ;
typedef  TYPE_2__ WinNE_HeaderRec ;
typedef  TYPE_2__ WinMZ_HeaderRec ;
struct TYPE_24__ {int size; scalar_t__ cursor; scalar_t__ limit; } ;
struct TYPE_22__ {int num_faces; } ;
struct TYPE_21__ {int /*<<< orphan*/  memory; TYPE_9__* stream; } ;
struct TYPE_20__ {int offset; int fnt_size; } ;
struct TYPE_19__ {TYPE_1__ root; TYPE_11__* font; } ;
typedef  int FT_UShort ;
typedef  int FT_ULong ;
typedef  TYPE_9__* FT_Stream ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int FT_Long ;
typedef  scalar_t__ FT_Int ;
typedef  scalar_t__ FT_Error ;
typedef  TYPE_10__* FNT_Face ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_17__* FUNC2 (TYPE_10__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_11__*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  Invalid_File_Format ; 
 int /*<<< orphan*/  Unknown_File_Format ; 
 scalar_t__ WINFNT_MZ_MAGIC ; 
 scalar_t__ WINFNT_NE_MAGIC ; 
 scalar_t__ WINFNT_PE_MAGIC ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*) ; 
 scalar_t__ FUNC13 (TYPE_11__*,TYPE_9__*) ; 
 int /*<<< orphan*/  winmz_header_fields ; 
 int /*<<< orphan*/  winne_header_fields ; 
 int /*<<< orphan*/  winpe32_header_fields ; 
 int /*<<< orphan*/  winpe32_section_fields ; 
 int /*<<< orphan*/  winpe_rsrc_data_entry_fields ; 
 int /*<<< orphan*/  winpe_rsrc_dir_entry_fields ; 
 int /*<<< orphan*/  winpe_rsrc_dir_fields ; 

__attribute__((used)) static FT_Error
  FUNC14( FNT_Face  face,
                         FT_Int    face_instance_index )
  {
    FT_Error         error;
    FT_Stream        stream = FUNC2( face )->stream;
    FT_Memory        memory = FUNC2( face )->memory;
    WinMZ_HeaderRec  mz_header;
    FT_Long          face_index;


    face->font = NULL;

    face_index = FUNC0( face_instance_index ) & 0xFFFF;

    /* does it begin with an MZ header? */
    if ( FUNC9( 0 )                                      ||
         FUNC8( winmz_header_fields, &mz_header ) )
      goto Exit;

    error = FUNC1( Unknown_File_Format );
    if ( mz_header.magic == WINFNT_MZ_MAGIC )
    {
      /* yes, now look for an NE header in the file */
      WinNE_HeaderRec  ne_header;


      FUNC11(( "MZ signature found\n" ));

      if ( FUNC9( mz_header.lfanew )                       ||
           FUNC8( winne_header_fields, &ne_header ) )
        goto Exit;

      error = FUNC1( Unknown_File_Format );
      if ( ne_header.magic == WINFNT_NE_MAGIC )
      {
        /* good, now look into the resource table for each FNT resource */
        FT_ULong   res_offset  = mz_header.lfanew +
                                   ne_header.resource_tab_offset;
        FT_UShort  size_shift;
        FT_UShort  font_count  = 0;
        FT_ULong   font_offset = 0;


        FUNC11(( "NE signature found\n" ));

        if ( FUNC9( res_offset )                    ||
             FUNC3( ne_header.rname_tab_offset -
                             ne_header.resource_tab_offset ) )
          goto Exit;

        size_shift = FUNC5();

        /* Microsoft's specification of the executable-file header format */
        /* for `New Executable' (NE) doesn't give a limit for the         */
        /* alignment shift count; however, in 1985, the year of the       */
        /* specification release, only 32bit values were supported, thus  */
        /* anything larger than 16 doesn't make sense in general, given   */
        /* that file offsets are 16bit values, shifted by the alignment   */
        /* shift count                                                    */
        if ( size_shift > 16 )
        {
          FUNC11(( "invalid alignment shift count for resource data\n" ));
          error = FUNC10( Invalid_File_Format );
          goto Exit;
        }


        for (;;)
        {
          FT_UShort  type_id, count;


          type_id = FUNC5();
          if ( !type_id )
            break;

          count = FUNC5();

          if ( type_id == 0x8008U )
          {
            font_count  = count;
            font_offset = FUNC7() + 4 +
                          (FT_ULong)( stream->cursor - stream->limit );
            break;
          }

          stream->cursor += 4 + count * 12;
        }

        FUNC4();

        if ( !font_count || !font_offset )
        {
          FUNC11(( "this file doesn't contain any FNT resources\n" ));
          error = FUNC10( Invalid_File_Format );
          goto Exit;
        }

        /* loading `winfnt_header_fields' needs at least 118 bytes;    */
        /* use this as a rough measure to check the expected font size */
        if ( font_count * 118UL > stream->size )
        {
          FUNC11(( "invalid number of faces\n" ));
          error = FUNC10( Invalid_File_Format );
          goto Exit;
        }

        face->root.num_faces = font_count;

        if ( face_instance_index < 0 )
          goto Exit;

        if ( face_index >= font_count )
        {
          error = FUNC10( Invalid_Argument );
          goto Exit;
        }

        if ( FUNC6( face->font ) )
          goto Exit;

        if ( FUNC9( font_offset + (FT_ULong)face_index * 12 ) ||
             FUNC3( 12 )                                      )
          goto Fail;

        face->font->offset   = (FT_ULong)FUNC5() << size_shift;
        face->font->fnt_size = (FT_ULong)FUNC5() << size_shift;

        stream->cursor += 8;

        FUNC4();

        error = FUNC13( face->font, stream );
      }
      else if ( ne_header.magic == WINFNT_PE_MAGIC )
      {
        WinPE32_HeaderRec       pe32_header;
        WinPE32_SectionRec      pe32_section;
        WinPE_RsrcDirRec        root_dir, name_dir, lang_dir;
        WinPE_RsrcDirEntryRec   dir_entry1, dir_entry2, dir_entry3;
        WinPE_RsrcDataEntryRec  data_entry;

        FT_ULong   root_dir_offset, name_dir_offset, lang_dir_offset;
        FT_UShort  i, j, k;


        FUNC11(( "PE signature found\n" ));

        if ( FUNC9( mz_header.lfanew )                           ||
             FUNC8( winpe32_header_fields, &pe32_header ) )
          goto Exit;

        FUNC11(( "magic %04lx, machine %02x, number_of_sections %u, "
                    "size_of_optional_header %02x\n"
                    "magic32 %02x, rsrc_virtual_address %04lx, "
                    "rsrc_size %04lx\n",
                    pe32_header.magic, pe32_header.machine,
                    pe32_header.number_of_sections,
                    pe32_header.size_of_optional_header,
                    pe32_header.magic32, pe32_header.rsrc_virtual_address,
                    pe32_header.rsrc_size ));

        if ( pe32_header.magic != WINFNT_PE_MAGIC /* check full signature */ ||
             pe32_header.machine != 0x014C /* i386 */                        ||
             pe32_header.size_of_optional_header != 0xE0 /* FIXME */         ||
             pe32_header.magic32 != 0x10B                                    )
        {
          FUNC11(( "this file has an invalid PE header\n" ));
          error = FUNC10( Invalid_File_Format );
          goto Exit;
        }

        face->root.num_faces = 0;

        for ( i = 0; i < pe32_header.number_of_sections; i++ )
        {
          if ( FUNC8( winpe32_section_fields,
                                      &pe32_section ) )
            goto Exit;

          FUNC11(( "name %.8s, va %04lx, size %04lx, offset %04lx\n",
                      pe32_section.name, pe32_section.virtual_address,
                      pe32_section.size_of_raw_data,
                      pe32_section.pointer_to_raw_data ));

          if ( pe32_header.rsrc_virtual_address ==
                 pe32_section.virtual_address )
            goto Found_rsrc_section;
        }

        FUNC11(( "this file doesn't contain any resources\n" ));
        error = FUNC10( Invalid_File_Format );
        goto Exit;

      Found_rsrc_section:
        FUNC11(( "found resources section %.8s\n", pe32_section.name ));

        if ( FUNC9( pe32_section.pointer_to_raw_data )        ||
             FUNC8( winpe_rsrc_dir_fields, &root_dir ) )
          goto Exit;

        root_dir_offset = pe32_section.pointer_to_raw_data;

        for ( i = 0; i < root_dir.number_of_named_entries +
                           root_dir.number_of_id_entries; i++ )
        {
          if ( FUNC9( root_dir_offset + 16 + i * 8 )      ||
               FUNC8( winpe_rsrc_dir_entry_fields,
                                      &dir_entry1 )                )
            goto Exit;

          if ( !(dir_entry1.offset & 0x80000000UL ) /* DataIsDirectory */ )
          {
            error = FUNC10( Invalid_File_Format );
            goto Exit;
          }

          dir_entry1.offset &= ~0x80000000UL;

          name_dir_offset = pe32_section.pointer_to_raw_data +
                            dir_entry1.offset;

          if ( FUNC9( pe32_section.pointer_to_raw_data +
                               dir_entry1.offset )                       ||
               FUNC8( winpe_rsrc_dir_fields, &name_dir ) )
            goto Exit;

          for ( j = 0; j < name_dir.number_of_named_entries +
                             name_dir.number_of_id_entries; j++ )
          {
            if ( FUNC9( name_dir_offset + 16 + j * 8 )      ||
                 FUNC8( winpe_rsrc_dir_entry_fields,
                                        &dir_entry2 )                )
              goto Exit;

            if ( !(dir_entry2.offset & 0x80000000UL ) /* DataIsDirectory */ )
            {
              error = FUNC10( Invalid_File_Format );
              goto Exit;
            }

            dir_entry2.offset &= ~0x80000000UL;

            lang_dir_offset = pe32_section.pointer_to_raw_data +
                                dir_entry2.offset;

            if ( FUNC9( pe32_section.pointer_to_raw_data +
                                   dir_entry2.offset )                     ||
                 FUNC8( winpe_rsrc_dir_fields, &lang_dir ) )
              goto Exit;

            for ( k = 0; k < lang_dir.number_of_named_entries +
                               lang_dir.number_of_id_entries; k++ )
            {
              if ( FUNC9( lang_dir_offset + 16 + k * 8 )      ||
                   FUNC8( winpe_rsrc_dir_entry_fields,
                                          &dir_entry3 )                )
                goto Exit;

              if ( dir_entry2.offset & 0x80000000UL /* DataIsDirectory */ )
              {
                error = FUNC10( Invalid_File_Format );
                goto Exit;
              }

              if ( dir_entry1.name == 8 /* RT_FONT */ )
              {
                if ( FUNC9( root_dir_offset + dir_entry3.offset ) ||
                     FUNC8( winpe_rsrc_data_entry_fields,
                                            &data_entry )                  )
                  goto Exit;

                FUNC11(( "found font #%lu, offset %04lx, "
                            "size %04lx, cp %lu\n",
                            dir_entry2.name,
                            pe32_section.pointer_to_raw_data +
                              data_entry.offset_to_data -
                              pe32_section.virtual_address,
                            data_entry.size, data_entry.code_page ));

                if ( face_index == face->root.num_faces )
                {
                  if ( FUNC6( face->font ) )
                    goto Exit;

                  face->font->offset   = pe32_section.pointer_to_raw_data +
                                           data_entry.offset_to_data -
                                           pe32_section.virtual_address;
                  face->font->fnt_size = data_entry.size;

                  error = FUNC13( face->font, stream );
                  if ( error )
                  {
                    FUNC11(( "font #%lu load error 0x%x\n",
                                dir_entry2.name, error ));
                    goto Fail;
                  }
                  else
                    FUNC11(( "font #%lu successfully loaded\n",
                                dir_entry2.name ));
                }

                face->root.num_faces++;
              }
            }
          }
        }
      }

      if ( !face->root.num_faces )
      {
        FUNC11(( "this file doesn't contain any RT_FONT resources\n" ));
        error = FUNC10( Invalid_File_Format );
        goto Exit;
      }

      if ( face_index >= face->root.num_faces )
      {
        error = FUNC10( Invalid_Argument );
        goto Exit;
      }
    }

  Fail:
    if ( error )
      FUNC12( face );

  Exit:
    return error;
  }