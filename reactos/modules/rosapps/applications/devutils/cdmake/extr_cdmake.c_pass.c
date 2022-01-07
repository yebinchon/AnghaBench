
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int header_id; int platform_id; } ;
struct TYPE_15__ {int sector; int offset; int * file; } ;
struct TYPE_14__ {int boot_id; int boot_emu_type; int load_segment; int sector_count; int load_rba; char const* bootimage; } ;
struct TYPE_13__ {int boot_id; int boot_emu_type; int load_segment; int sector_count; int load_rba; char const* bootimage; struct TYPE_13__* next_entry; } ;
struct TYPE_12__ {int header_id; int platform_id; int num_entries; struct TYPE_12__* next_header; TYPE_3__* entry_list; } ;
struct TYPE_11__ {int sector; int path_table_index; char* name_on_cd; int joliet_sector; char* joliet_name; int flags; int size; int joliet_size; char* orig_name; struct TYPE_11__* next_in_directory; struct TYPE_11__* first_record; struct TYPE_11__* parent; struct TYPE_11__* next_in_path_table; } ;
typedef TYPE_1__* PDIR_RECORD ;
typedef TYPE_2__* PBOOT_HEADER ;
typedef TYPE_3__* PBOOT_ENTRY ;
typedef int FILE ;
typedef int DWORD ;
typedef int BYTE ;


 char* APP_ID ;
 char* DATA_PREP_ID ;
 int DIRECTORY_FLAG ;
 int DOT_DOT_RECORD ;
 int DOT_RECORD ;
 int FALSE ;
 int FILE_RECORD ;
 char* MANUFACTURER_ID ;
 char* PUBLISHER_ID ;
 int SECTOR_SIZE ;
 int SEEK_END ;
 int SUBDIRECTORY_RECORD ;
 int TRUE ;
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
 int error_exit (char*,...) ;
 int fclose (int *) ;
 int fill_sector () ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int get_file_specifications (TYPE_1__*) ;
 int get_time_string (char*) ;
 scalar_t__ joliet ;
 int joliet_big_endian_path_table_sector ;
 int joliet_little_endian_path_table_sector ;
 int joliet_path_table_size ;
 int little_endian_path_table_sector ;
 scalar_t__ make_bridged_udf ;
 int number_of_directories ;
 int number_of_files ;
 int path_table_size ;
 int printf (char*,char const*) ;
 TYPE_1__ root ;
 char* source ;
 int strlen (char*) ;
 int total_sectors ;
 int unused_bytes_at_ends_of_files ;
 scalar_t__ verbosity ;
 char* volume_label ;
 int write_big_endian_dword (int) ;
 int write_big_endian_word (int) ;
 int write_block (int,int ) ;
 int write_both_endian_dword (int) ;
 int write_both_endian_word (int) ;
 int write_byte (int) ;
 int write_bytecounted_string (int,char*,char) ;
 int write_bytecounted_string_as_big_endian_unicode (int,char*,char) ;
 int write_directory_record (TYPE_1__*,int ,int ) ;
 int write_from_file (int *,int) ;
 int write_little_endian_dword (int) ;
 int write_little_endian_word (int) ;
 int write_string (char*) ;
 int write_string_as_big_endian_unicode (char*) ;

__attribute__((used)) static void pass(void)
{
    PDIR_RECORD d, q;
    unsigned int index;
    unsigned int name_length;
    DWORD size;
    DWORD number_of_sectors;
    char *old_end_source;
    FILE *file;

    PBOOT_HEADER header;
    PBOOT_ENTRY entry;

    char timestring[17];

    get_time_string(timestring);


    write_block(16 * SECTOR_SIZE, 0);



    if (make_bridged_udf)
    {
        write_string("\1CD001\1");
        write_byte(0);
        write_bytecounted_string(32, "", ' ');
        write_bytecounted_string(32, volume_label, ' ');

        write_block(8, 0);
        write_both_endian_dword(total_sectors);
        write_block(32, 0);
        write_both_endian_word(1);
        write_both_endian_word(1);
        write_both_endian_word(2048);
        write_both_endian_dword(path_table_size);
        write_little_endian_dword(little_endian_path_table_sector);
        write_little_endian_dword(0);
        write_big_endian_dword(big_endian_path_table_sector);
        write_big_endian_dword(0);
        write_directory_record(&root, DOT_RECORD, FALSE);

        write_bytecounted_string(128, volume_label, ' ');
        write_bytecounted_string(128, PUBLISHER_ID, ' ');
        write_bytecounted_string(128, DATA_PREP_ID, ' ');
        write_bytecounted_string(128, APP_ID, ' ');

        write_bytecounted_string(37, "", ' ');
        write_bytecounted_string(37, "", ' ');
        write_bytecounted_string(37, "", ' ');

        write_string(timestring);
        write_byte(0);
        write_string(timestring);
        write_byte(0);
        write_string("0000000000000000");
        write_byte(0);
        write_string("0000000000000000");
        write_byte(0);
        write_byte(1);
        write_byte(0);
        fill_sector();
    }


    if (eltorito)
    {
        write_byte(0);
        write_string("CD001\1");
        write_bytecounted_string(32, "EL TORITO SPECIFICATION", 0);
        write_block(32, 0);
        write_little_endian_dword(boot_catalog_sector);
        fill_sector();
    }


    if (joliet)
    {
        write_string("\2CD001\1");
        write_byte(0);
        write_bytecounted_string_as_big_endian_unicode(32, "", ' ');
        write_bytecounted_string_as_big_endian_unicode(32, volume_label, ' ');

        write_block(8, 0);
        write_both_endian_dword(total_sectors);
        write_string("%/E");
        write_block(29, 0);
        write_both_endian_word(1);
        write_both_endian_word(1);
        write_both_endian_word(2048);
        write_both_endian_dword(joliet_path_table_size);
        write_little_endian_dword(joliet_little_endian_path_table_sector);
        write_little_endian_dword(0);
        write_big_endian_dword(joliet_big_endian_path_table_sector);
        write_big_endian_dword(0);
        write_directory_record(&root, DOT_RECORD, TRUE);

        write_bytecounted_string_as_big_endian_unicode(128, volume_label, ' ');
        write_bytecounted_string_as_big_endian_unicode(128, PUBLISHER_ID, ' ');
        write_bytecounted_string_as_big_endian_unicode(128, DATA_PREP_ID, ' ');
        write_bytecounted_string_as_big_endian_unicode(128, APP_ID, ' ');

        write_bytecounted_string_as_big_endian_unicode(37, "", ' ');
        write_bytecounted_string_as_big_endian_unicode(37, "", ' ');
        write_bytecounted_string_as_big_endian_unicode(37, "", ' ');

        write_string(timestring);
        write_byte(0);
        write_string(timestring);
        write_byte(0);
        write_string("0000000000000000");
        write_byte(0);
        write_string("0000000000000000");
        write_byte(0);
        write_byte(1);
        write_byte(0);
        fill_sector();
    }


    if (make_bridged_udf)
    {
        write_string("\377CD001\1");
        fill_sector();
    }




    if (eltorito)
    {
        boot_catalog_sector = cd.sector;


        write_byte(boot_validation_header.header_id);
        write_byte(boot_validation_header.platform_id);
        write_little_endian_word(0);
        write_bytecounted_string(24, MANUFACTURER_ID, 0);
        write_little_endian_word(0x62E);
        write_little_endian_word(0xAA55);


        write_byte(default_boot_entry.boot_id);
        write_byte(default_boot_entry.boot_emu_type);
        write_little_endian_word(default_boot_entry.load_segment);
        write_byte(0);
        write_byte(0);
        write_little_endian_word(default_boot_entry.sector_count);
        write_little_endian_dword(default_boot_entry.load_rba);
        write_block(20, 0);


        header = boot_header_list;
        while (header)
        {
            write_byte(header->header_id);
            write_byte(header->platform_id);
            write_little_endian_word(header->num_entries);
            write_block(28, 0);


            entry = header->entry_list;
            while (entry)
            {
                write_byte(entry->boot_id);
                write_byte(entry->boot_emu_type);
                write_little_endian_word(entry->load_segment);
                write_byte(0);
                write_byte(0);
                write_little_endian_word(entry->sector_count);
                write_little_endian_dword(entry->load_rba);
                write_block(20, 0);

                entry = entry->next_entry;
            }

            header = header->next_header;
        }

        fill_sector();
    }



    if (eltorito)
    {
        default_boot_entry.load_rba = cd.sector;

        file = fopen(default_boot_entry.bootimage, "rb");
        if (file == ((void*)0))
            error_exit("Cannot open '%s'\n", default_boot_entry.bootimage);
        fseek(file, 0, SEEK_END);
        size = ftell(file);
        if (size == 0 || (size % 2048))
        {
            fclose(file);
            error_exit("Invalid boot image size (%lu bytes)\n", size);
        }

        default_boot_entry.sector_count = (size + 511) / 512;
        if (!write_from_file(file, size))
        {
            fclose(file);
            error_exit("Read error in file '%s'\n", default_boot_entry.bootimage);
        }
        fclose(file);


        header = boot_header_list;
        while (header)
        {

            entry = header->entry_list;
            while (entry)
            {
                entry->load_rba = cd.sector;

                file = fopen(entry->bootimage, "rb");
                if (file == ((void*)0))
                    error_exit("Cannot open '%s'\n", entry->bootimage);
                fseek(file, 0, SEEK_END);
                size = ftell(file);
                if (size == 0 || (size % 2048))
                {
                    fclose(file);
                    error_exit("Invalid boot image size (%lu bytes)\n", size);
                }

                entry->sector_count = (size + 511) / 512;
                if (!write_from_file(file, size))
                {
                    fclose(file);
                    error_exit("Read error in file '%s'\n", entry->bootimage);
                }
                fclose(file);

                entry = entry->next_entry;
            }

            header = header->next_header;
        }


    }




    little_endian_path_table_sector = cd.sector;
    write_byte(1);
    write_byte(0);
    write_little_endian_dword(root.sector);
    write_little_endian_word(1);
    write_byte(0);
    write_byte(0);

    index = 1;
    root.path_table_index = 1;
    for (d = root.next_in_path_table; d != ((void*)0); d = d->next_in_path_table)
    {
        name_length = strlen(d->name_on_cd);
        write_byte((BYTE)name_length);
        write_byte(0);
        write_little_endian_dword(d->sector);
        write_little_endian_word(d->parent->path_table_index);
        write_string(d->name_on_cd);
        if (name_length & 1)
            write_byte(0);
        d->path_table_index = ++index;
    }

    path_table_size = (cd.sector - little_endian_path_table_sector) *
                       SECTOR_SIZE + cd.offset;
    fill_sector();




    big_endian_path_table_sector = cd.sector;
    write_byte(1);
    write_byte(0);
    write_big_endian_dword(root.sector);
    write_big_endian_word(1);
    write_byte(0);
    write_byte(0);

    for (d = root.next_in_path_table; d != ((void*)0); d = d->next_in_path_table)
    {
        name_length = strlen(d->name_on_cd);
        write_byte((BYTE)name_length);
        write_byte(0);
        write_big_endian_dword(d->sector);
        write_big_endian_word(d->parent->path_table_index);
        write_string(d->name_on_cd);
        if (name_length & 1)
            write_byte(0);
    }
    fill_sector();

    if (joliet)
    {


        joliet_little_endian_path_table_sector = cd.sector;
        write_byte(1);
        write_byte(0);
        write_little_endian_dword(root.joliet_sector);
        write_little_endian_word(1);
        write_byte(0);
        write_byte(0);

        for (d = root.next_in_path_table; d != ((void*)0); d = d->next_in_path_table)
        {
            name_length = strlen(d->joliet_name) * 2;
            write_byte((BYTE)name_length);
            write_byte(0);
            write_little_endian_dword(d->joliet_sector);
            write_little_endian_word(d->parent->path_table_index);
            write_string_as_big_endian_unicode(d->joliet_name);
        }

        joliet_path_table_size = (cd.sector - joliet_little_endian_path_table_sector) *
                                  SECTOR_SIZE + cd.offset;
        fill_sector();



        joliet_big_endian_path_table_sector = cd.sector;
        write_byte(1);
        write_byte(0);
        write_big_endian_dword(root.joliet_sector);
        write_big_endian_word(1);
        write_byte(0);
        write_byte(0);

        for (d = root.next_in_path_table; d != ((void*)0); d = d->next_in_path_table)
        {
            name_length = strlen(d->joliet_name) * 2;
            write_byte((BYTE)name_length);
            write_byte(0);
            write_big_endian_dword(d->joliet_sector);
            write_big_endian_word(d->parent->path_table_index);
            write_string_as_big_endian_unicode(d->joliet_name);
        }
        fill_sector();
    }
    for (d = &root; d != ((void*)0); d = d->next_in_path_table)
    {

        d->sector = cd.sector;
        write_directory_record(d, DOT_RECORD, FALSE);
        write_directory_record(d == &root ? d : d->parent, DOT_DOT_RECORD, FALSE);
        for (q = d->first_record; q != ((void*)0); q = q->next_in_directory)
        {
            write_directory_record(q,
                                   q->flags & DIRECTORY_FLAG ? SUBDIRECTORY_RECORD : FILE_RECORD,
                                   FALSE);
        }
        fill_sector();
        d->size = (cd.sector - d->sector) * SECTOR_SIZE;


        if (joliet)
        {
            d->joliet_sector = cd.sector;
            write_directory_record(d, DOT_RECORD, TRUE);
            write_directory_record(d == &root ? d : d->parent, DOT_DOT_RECORD, TRUE);
            for (q = d->first_record; q != ((void*)0); q = q->next_in_directory)
            {
                write_directory_record(q,
                                       q->flags & DIRECTORY_FLAG ? SUBDIRECTORY_RECORD : FILE_RECORD,
                                       TRUE);
            }
            fill_sector();
            d->joliet_size = (cd.sector - d->joliet_sector) * SECTOR_SIZE;
            bytes_in_directories += d->joliet_size;
        }

        number_of_directories++;
        bytes_in_directories += d->size;


        for (q = d->first_record; q != ((void*)0); q = q->next_in_directory)
        {
            if ((q->flags & DIRECTORY_FLAG) == 0)
            {
                q->sector = q->joliet_sector = cd.sector;
                size = q->size;
                if (cd.file == ((void*)0))
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
                        get_file_specifications(q);
                        *end_source = 0;
                        file_source = source;
                    }
                    else
                    {
                        file_source = q->orig_name;
                    }
                    if (verbosity == VERBOSE)
                        printf("Writing contents of %s\n", file_source);
                    file = fopen(file_source, "rb");
                    if (file == ((void*)0))
                        error_exit("Cannot open '%s'\n", file_source);
                    if (!write_from_file(file, size))
                    {
                        fclose(file);
                        error_exit("Read error in file '%s'\n", file_source);
                    }
                    fclose(file);
                    end_source = old_end_source;
                    fill_sector();
                }
            }
        }
    }



    total_sectors = (DWORD)cd.sector;
}
