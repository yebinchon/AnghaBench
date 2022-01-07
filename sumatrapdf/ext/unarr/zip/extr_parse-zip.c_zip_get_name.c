
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct zip_entry {int namelen; int flags; } ;
struct TYPE_9__ {char* name; scalar_t__ offset; } ;
struct TYPE_8__ {scalar_t__ end_offset; } ;
struct TYPE_10__ {TYPE_2__ entry; TYPE_1__ dir; } ;
typedef TYPE_3__ ar_archive_zip ;
struct TYPE_11__ {int stream; scalar_t__ entry_offset; } ;
typedef TYPE_4__ ar_archive ;


 int SEEK_SET ;
 scalar_t__ ZIP_DIR_ENTRY_FIXED_SIZE ;
 scalar_t__ ZIP_LOCAL_ENTRY_FIXED_SIZE ;
 char* ar_conv_dos_to_utf8 (char*) ;
 int ar_read (int ,char*,int) ;
 int ar_seek (int ,scalar_t__,int ) ;
 int free (char*) ;
 char* malloc (int) ;
 char* strchr (char*,char) ;
 int zip_parse_directory_entry (TYPE_3__*,struct zip_entry*) ;
 int zip_parse_local_file_entry (TYPE_3__*,struct zip_entry*) ;

const char *zip_get_name(ar_archive *ar)
{
    ar_archive_zip *zip = (ar_archive_zip *)ar;
    if (!zip->entry.name) {
        struct zip_entry entry;
        char *name;

        if (zip->dir.end_offset >= 0) {
            if (!ar_seek(ar->stream, ar->entry_offset, SEEK_SET))
                return ((void*)0);
            if (!zip_parse_directory_entry(zip, &entry))
                return ((void*)0);
            if (!ar_seek(ar->stream, ar->entry_offset + ZIP_DIR_ENTRY_FIXED_SIZE, SEEK_SET))
                return ((void*)0);
        }
        else {
            if (!ar_seek(ar->stream, zip->entry.offset, SEEK_SET))
                return ((void*)0);
            if (!zip_parse_local_file_entry(zip, &entry))
                return ((void*)0);
            if (!ar_seek(ar->stream, ar->entry_offset + ZIP_LOCAL_ENTRY_FIXED_SIZE, SEEK_SET))
                return ((void*)0);
        }

        name = malloc(entry.namelen + 1);
        if (!name || ar_read(ar->stream, name, entry.namelen) != entry.namelen) {
            free(name);
            return ((void*)0);
        }
        name[entry.namelen] = '\0';

        if ((entry.flags & (1 << 11))) {
            zip->entry.name = name;
        }
        else {
            zip->entry.name = ar_conv_dos_to_utf8(name);
            free(name);
        }

        if (zip->entry.name) {
            char *p = zip->entry.name;
            while ((p = strchr(p, '\\')) != ((void*)0)) {
                *p = '/';
            }
        }
    }
    return zip->entry.name;
}
