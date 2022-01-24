#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int header_id; int platform_id; } ;
struct TYPE_15__ {int sector; int offset; int /*<<< orphan*/ * file; } ;
struct TYPE_14__ {int boot_id; int boot_emu_type; int load_segment; int sector_count; int load_rba; char const* bootimage; } ;
struct TYPE_13__ {int boot_id; int boot_emu_type; int load_segment; int sector_count; int load_rba; char const* bootimage; struct TYPE_13__* next_entry; } ;
struct TYPE_12__ {int header_id; int platform_id; int num_entries; struct TYPE_12__* next_header; TYPE_3__* entry_list; } ;
struct TYPE_11__ {int sector; int path_table_index; char* name_on_cd; int joliet_sector; char* joliet_name; int flags; int size; int joliet_size; char* orig_name; struct TYPE_11__* next_in_directory; struct TYPE_11__* first_record; struct TYPE_11__* parent; struct TYPE_11__* next_in_path_table; } ;
typedef  TYPE_1__* PDIR_RECORD ;
typedef  TYPE_2__* PBOOT_HEADER ;
typedef  TYPE_3__* PBOOT_ENTRY ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 char* APP_ID ; 
 char* DATA_PREP_ID ; 
 int DIRECTORY_FLAG ; 
 int /*<<< orphan*/  DOT_DOT_RECORD ; 
 int /*<<< orphan*/  DOT_RECORD ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_RECORD ; 
 char* MANUFACTURER_ID ; 
 char* PUBLISHER_ID ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SUBDIRECTORY_RECORD ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VERBOSE ; 
 int big_endian_path_table_sector ; 
 int boot_catalog_sector ; 
 TYPE_2__* boot_header_list ; 
 TYPE_9__ boot_validation_header ; 
 int bytes_in_directories ; 
 int bytes_in_files ; 
 TYPE_8__ cd ; 
 TYPE_7__ default_boot_entry ; 
 scalar_t__ eltorito ; 
 char* end_source ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ joliet ; 
 int joliet_big_endian_path_table_sector ; 
 int joliet_little_endian_path_table_sector ; 
 int joliet_path_table_size ; 
 int little_endian_path_table_sector ; 
 scalar_t__ make_bridged_udf ; 
 int /*<<< orphan*/  number_of_directories ; 
 int /*<<< orphan*/  number_of_files ; 
 int path_table_size ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 TYPE_1__ root ; 
 char* source ; 
 int FUNC9 (char*) ; 
 int total_sectors ; 
 int /*<<< orphan*/  unused_bytes_at_ends_of_files ; 
 scalar_t__ verbosity ; 
 char* volume_label ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,char) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,char) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void FUNC24(void)
{
    PDIR_RECORD d, q;
    unsigned int index;
    unsigned int name_length;
    DWORD size;
    DWORD number_of_sectors;
    char *old_end_source;
    FILE *file;

    PBOOT_HEADER header;
    PBOOT_ENTRY  entry;

    char timestring[17];

    FUNC7(timestring);

    // first 16 sectors are zeros
    FUNC12(16 * SECTOR_SIZE, 0);


    // Primary Volume Descriptor
    if (make_bridged_udf)
    {
        FUNC22("\1CD001\1");
        FUNC15(0);
        FUNC16(32, "", ' ');           // system identifier
        FUNC16(32, volume_label, ' '); // volume label

        FUNC12(8, 0);
        FUNC13(total_sectors);
        FUNC12(32, 0);
        FUNC14(1); // volume set size
        FUNC14(1); // volume sequence number
        FUNC14(2048); // sector size
        FUNC13(path_table_size);
        FUNC20(little_endian_path_table_sector);
        FUNC20(0);  // second little endian path table
        FUNC10(big_endian_path_table_sector);
        FUNC10(0);  // second big endian path table
        FUNC18(&root, DOT_RECORD, FALSE);

        FUNC16(128, volume_label, ' '); // volume set identifier
        FUNC16(128, PUBLISHER_ID, ' '); // publisher identifier
        FUNC16(128, DATA_PREP_ID, ' '); // data preparer identifier
        FUNC16(128, APP_ID, ' ');       // application identifier

        FUNC16(37, "", ' '); // copyright file identifier
        FUNC16(37, "", ' '); // abstract file identifier
        FUNC16(37, "", ' '); // bibliographic file identifier

        FUNC22(timestring);  // volume creation
        FUNC15(0);
        FUNC22(timestring);  // most recent modification
        FUNC15(0);
        FUNC22("0000000000000000");  // volume expires
        FUNC15(0);
        FUNC22("0000000000000000");  // volume is effective
        FUNC15(0);
        FUNC15(1);
        FUNC15(0);
        FUNC2();
    }

    // Boot Volume Descriptor
    if (eltorito)
    {
        FUNC15(0);  // Boot record ID
        FUNC22("CD001\1");
        FUNC16(32, "EL TORITO SPECIFICATION", 0); // El-Torito identifier
        FUNC12(32, 0);  // unused
        FUNC20(boot_catalog_sector);  // pointer to boot catalog
        FUNC2();
    }

    // Supplementary Volume Descriptor
    if (joliet)
    {
        FUNC22("\2CD001\1");
        FUNC15(0);
        FUNC17(32, "", ' ');           // system identifier
        FUNC17(32, volume_label, ' '); // volume label

        FUNC12(8, 0);
        FUNC13(total_sectors);
        FUNC22("%/E");
        FUNC12(29, 0);
        FUNC14(1); // volume set size
        FUNC14(1); // volume sequence number
        FUNC14(2048); // sector size
        FUNC13(joliet_path_table_size);
        FUNC20(joliet_little_endian_path_table_sector);
        FUNC20(0);  // second little endian path table
        FUNC10(joliet_big_endian_path_table_sector);
        FUNC10(0);  // second big endian path table
        FUNC18(&root, DOT_RECORD, TRUE);

        FUNC17(128, volume_label, ' '); // volume set identifier
        FUNC17(128, PUBLISHER_ID, ' '); // publisher identifier
        FUNC17(128, DATA_PREP_ID, ' '); // data preparer identifier
        FUNC17(128, APP_ID, ' ');       // application identifier

        FUNC17(37, "", ' '); // copyright file identifier
        FUNC17(37, "", ' '); // abstract file identifier
        FUNC17(37, "", ' '); // bibliographic file identifier

        FUNC22(timestring);  // volume creation
        FUNC15(0);
        FUNC22(timestring);  // most recent modification
        FUNC15(0);
        FUNC22("0000000000000000");  // volume expires
        FUNC15(0);
        FUNC22("0000000000000000");  // volume is effective
        FUNC15(0);
        FUNC15(1);
        FUNC15(0);
        FUNC2();
    }

    // Volume Descriptor Set Terminator
    if (make_bridged_udf)
    {
        FUNC22("\377CD001\1");
        FUNC2();
    }

    // TODO: Add UDF support!

    // Boot Catalog
    if (eltorito)
    {
        boot_catalog_sector = cd.sector;

        // Validation entry header
        FUNC15(boot_validation_header.header_id);
        FUNC15(boot_validation_header.platform_id);
        FUNC21(0);  // reserved
        FUNC16(24, MANUFACTURER_ID, 0); // Manufacturer identifier
        FUNC21(0x62E);  // checksum // FIXME: This is hardcoded!!
        FUNC21(0xAA55);  // signature

        // Default entry
        FUNC15(default_boot_entry.boot_id);
        FUNC15(default_boot_entry.boot_emu_type);
        FUNC21(default_boot_entry.load_segment);
        FUNC15(0);  // partition type
        FUNC15(0);  // unused
        FUNC21(default_boot_entry.sector_count);
        FUNC20(default_boot_entry.load_rba);
        FUNC12(20, 0); // unused

        // Loop through each boot header
        header = boot_header_list;
        while (header)
        {
            FUNC15(header->header_id);
            FUNC15(header->platform_id);
            FUNC21(header->num_entries);
            FUNC12(28, 0); // Identifier string (unused)

            // Loop through each boot entry
            entry = header->entry_list;
            while (entry)
            {
                FUNC15(entry->boot_id);
                FUNC15(entry->boot_emu_type);
                FUNC21(entry->load_segment);
                FUNC15(0);  // partition type
                FUNC15(0);  // unused
                FUNC21(entry->sector_count);
                FUNC20(entry->load_rba);
                FUNC12(20, 0); // Selection criteria (unused)

                entry = entry->next_entry;
            }

            header = header->next_header;
        }

        FUNC2();
    }


    // Boot Images
    if (eltorito)
    {
        default_boot_entry.load_rba = cd.sector;

        file = FUNC3(default_boot_entry.bootimage, "rb");
        if (file == NULL)
            FUNC0("Cannot open '%s'\n", default_boot_entry.bootimage);
        FUNC4(file, 0, SEEK_END);
        size = FUNC5(file);
        if (size == 0 || (size % 2048))
        {
            FUNC1(file);
            FUNC0("Invalid boot image size (%lu bytes)\n", size);
        }
        // Sector count in 512 byte sectors and rounded up
        default_boot_entry.sector_count = (size + 511) / 512;
        if (!FUNC19(file, size))
        {
            FUNC1(file);
            FUNC0("Read error in file '%s'\n", default_boot_entry.bootimage);
        }
        FUNC1(file);

        // Loop through each boot header
        header = boot_header_list;
        while (header)
        {
            // Loop through each boot entry
            entry = header->entry_list;
            while (entry)
            {
                entry->load_rba = cd.sector;

                file = FUNC3(entry->bootimage, "rb");
                if (file == NULL)
                    FUNC0("Cannot open '%s'\n", entry->bootimage);
                FUNC4(file, 0, SEEK_END);
                size = FUNC5(file);
                if (size == 0 || (size % 2048))
                {
                    FUNC1(file);
                    FUNC0("Invalid boot image size (%lu bytes)\n", size);
                }
                // Sector count in 512 byte sectors and rounded up
                entry->sector_count = (size + 511) / 512;
                if (!FUNC19(file, size))
                {
                    FUNC1(file);
                    FUNC0("Read error in file '%s'\n", entry->bootimage);
                }
                FUNC1(file);

                entry = entry->next_entry;
            }

            header = header->next_header;
        }

//      fill_sector();
    }


    // Little Endian Path Table

    little_endian_path_table_sector = cd.sector;
    FUNC15(1);
    FUNC15(0);  // number of sectors in extended attribute record
    FUNC20(root.sector);
    FUNC21(1);
    FUNC15(0);
    FUNC15(0);

    index = 1;
    root.path_table_index = 1;
    for (d = root.next_in_path_table; d != NULL; d = d->next_in_path_table)
    {
        name_length = FUNC9(d->name_on_cd);
        FUNC15((BYTE)name_length);
        FUNC15(0);  // number of sectors in extended attribute record
        FUNC20(d->sector);
        FUNC21(d->parent->path_table_index);
        FUNC22(d->name_on_cd);
        if (name_length & 1)
            FUNC15(0);
        d->path_table_index = ++index;
    }

    path_table_size = (cd.sector - little_endian_path_table_sector) *
                       SECTOR_SIZE + cd.offset;
    FUNC2();


    // Big Endian Path Table

    big_endian_path_table_sector = cd.sector;
    FUNC15(1);
    FUNC15(0);  // number of sectors in extended attribute record
    FUNC10(root.sector);
    FUNC11(1);
    FUNC15(0);
    FUNC15(0);

    for (d = root.next_in_path_table; d != NULL; d = d->next_in_path_table)
    {
        name_length = FUNC9(d->name_on_cd);
        FUNC15((BYTE)name_length);
        FUNC15(0);  // number of sectors in extended attribute record
        FUNC10(d->sector);
        FUNC11(d->parent->path_table_index);
        FUNC22(d->name_on_cd);
        if (name_length & 1)
            FUNC15(0);
    }
    FUNC2();

    if (joliet)
    {
        // Little Endian Path Table

        joliet_little_endian_path_table_sector = cd.sector;
        FUNC15(1);
        FUNC15(0);  // number of sectors in extended attribute record
        FUNC20(root.joliet_sector);
        FUNC21(1);
        FUNC15(0);
        FUNC15(0);

        for (d = root.next_in_path_table; d != NULL; d = d->next_in_path_table)
        {
            name_length = FUNC9(d->joliet_name) * 2;
            FUNC15((BYTE)name_length);
            FUNC15(0);  // number of sectors in extended attribute record
            FUNC20(d->joliet_sector);
            FUNC21(d->parent->path_table_index);
            FUNC23(d->joliet_name);
        }

        joliet_path_table_size = (cd.sector - joliet_little_endian_path_table_sector) *
                                  SECTOR_SIZE + cd.offset;
        FUNC2();

        // Big Endian Path Table

        joliet_big_endian_path_table_sector = cd.sector;
        FUNC15(1);
        FUNC15(0);  // number of sectors in extended attribute record
        FUNC10(root.joliet_sector);
        FUNC11(1);
        FUNC15(0);
        FUNC15(0);

        for (d = root.next_in_path_table; d != NULL; d = d->next_in_path_table)
        {
            name_length = FUNC9(d->joliet_name) * 2;
            FUNC15((BYTE)name_length);
            FUNC15(0);  // number of sectors in extended attribute record
            FUNC10(d->joliet_sector);
            FUNC11(d->parent->path_table_index);
            FUNC23(d->joliet_name);
        }
        FUNC2();
    }

    // TODO: Add UDF support!

#if 0
    // Boot Images ??
#endif

    // TODO: Add CRC block for header!

    // Directories and files
    for (d = &root; d != NULL; d = d->next_in_path_table)
    {
        // write directory
        d->sector = cd.sector;
        FUNC18(d, DOT_RECORD, FALSE);
        FUNC18(d == &root ? d : d->parent, DOT_DOT_RECORD, FALSE);
        for (q = d->first_record; q != NULL; q = q->next_in_directory)
        {
            FUNC18(q,
                                   q->flags & DIRECTORY_FLAG ? SUBDIRECTORY_RECORD : FILE_RECORD,
                                   FALSE);
        }
        FUNC2();
        d->size = (cd.sector - d->sector) * SECTOR_SIZE;

        // write directory for joliet
        if (joliet)
        {
            d->joliet_sector = cd.sector;
            FUNC18(d, DOT_RECORD, TRUE);
            FUNC18(d == &root ? d : d->parent, DOT_DOT_RECORD, TRUE);
            for (q = d->first_record; q != NULL; q = q->next_in_directory)
            {
                FUNC18(q,
                                       q->flags & DIRECTORY_FLAG ? SUBDIRECTORY_RECORD : FILE_RECORD,
                                       TRUE);
            }
            FUNC2();
            d->joliet_size = (cd.sector - d->joliet_sector) * SECTOR_SIZE;
            bytes_in_directories += d->joliet_size;
        }

        number_of_directories++;
        bytes_in_directories += d->size;

        // write file data
        for (q = d->first_record; q != NULL; q = q->next_in_directory)
        {
            if ((q->flags & DIRECTORY_FLAG) == 0)
            {
                q->sector = q->joliet_sector = cd.sector;
                size = q->size;
                if (cd.file == NULL)
                {
                    number_of_sectors = (size + SECTOR_SIZE - 1) / SECTOR_SIZE;
                    cd.sector += number_of_sectors;
                    number_of_files++;
                    bytes_in_files += size;
                    unused_bytes_at_ends_of_files +=
                    number_of_sectors * SECTOR_SIZE - size;
                }
                else
                {
                    const char *file_source;
                    old_end_source = end_source;
                    if (!q->orig_name)
                    {
                        FUNC6(q);
                        *end_source = 0;
                        file_source = source;
                    }
                    else
                    {
                        file_source = q->orig_name;
                    }
                    if (verbosity == VERBOSE)
                        FUNC8("Writing contents of %s\n", file_source);
                    file = FUNC3(file_source, "rb");
                    if (file == NULL)
                        FUNC0("Cannot open '%s'\n", file_source);
                    if (!FUNC19(file, size))
                    {
                        FUNC1(file);
                        FUNC0("Read error in file '%s'\n", file_source);
                    }
                    FUNC1(file);
                    end_source = old_end_source;
                    FUNC2();
                }
            }
        }
    }

    // TODO: Add final CRC block!

    total_sectors = (DWORD)cd.sector;
}