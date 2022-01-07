
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct rar_header {int flags; } ;
typedef int data ;
struct TYPE_6__ {char* name; scalar_t__ header_size; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef TYPE_2__ ar_archive_rar ;
struct TYPE_8__ {scalar_t__ entry_offset; int stream; } ;
typedef TYPE_3__ ar_archive ;


 int LHD_LARGE ;
 int LHD_UNICODE ;
 int SEEK_SET ;
 char* ar_conv_dos_to_utf8 (char*) ;
 int ar_read (int ,...) ;
 int ar_seek (int ,scalar_t__,int ) ;
 int ar_skip (int ,int) ;
 int free (char*) ;
 char* malloc (int) ;
 char* rar_conv_unicode_to_utf8 (char*,int) ;
 int rar_parse_header (TYPE_3__*,struct rar_header*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int uint16le (unsigned char*) ;
 int warn (char*) ;

const char *rar_get_name(ar_archive *ar)
{
    ar_archive_rar *rar = (ar_archive_rar *)ar;
    if (!rar->entry.name) {
        unsigned char data[21];
        uint16_t namelen;
        char *name;

        struct rar_header header;
        if (!ar_seek(ar->stream, ar->entry_offset, SEEK_SET))
            return ((void*)0);
        if (!rar_parse_header(ar, &header))
            return ((void*)0);
        if (ar_read(ar->stream, data, sizeof(data)) != sizeof(data))
            return ((void*)0);
        if ((header.flags & LHD_LARGE) && !ar_skip(ar->stream, 8))
            return ((void*)0);

        namelen = uint16le(data + 15);
        name = malloc(namelen + 1);
        if (!name || ar_read(ar->stream, name, namelen) != namelen) {
            free(name);
            return ((void*)0);
        }
        name[namelen] = '\0';

        if (!(header.flags & LHD_UNICODE)) {
            rar->entry.name = ar_conv_dos_to_utf8(name);
            free(name);
        }
        else if (namelen == strlen(name)) {
            rar->entry.name = name;
        }
        else {
            rar->entry.name = rar_conv_unicode_to_utf8(name, namelen);
            free(name);
        }

        if (rar->entry.name) {
            char *p = rar->entry.name;
            while ((p = strchr(p, '\\')) != ((void*)0)) {
                *p = '/';
            }
        }

        if (!ar_seek(ar->stream, ar->entry_offset + rar->entry.header_size, SEEK_SET))
            warn("Couldn't seek back to the end of the entry header");
    }
    return rar->entry.name;
}
