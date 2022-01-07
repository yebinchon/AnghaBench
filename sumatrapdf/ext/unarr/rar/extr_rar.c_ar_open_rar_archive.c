
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signature ;
typedef int ar_stream ;
typedef int ar_archive_rar ;
typedef int ar_archive ;


 int FILE_SIGNATURE_SIZE ;
 int SEEK_SET ;
 int * ar_open_archive (int *,int,int ,int ,int ,int ,int *,int) ;
 int ar_read (int *,char*,int) ;
 int ar_seek (int *,int ,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int rar_close ;
 int rar_get_name ;
 int rar_parse_entry ;
 int rar_uncompress ;
 int warn (char*) ;

ar_archive *ar_open_rar_archive(ar_stream *stream)
{
    char signature[FILE_SIGNATURE_SIZE];
    if (!ar_seek(stream, 0, SEEK_SET))
        return ((void*)0);
    if (ar_read(stream, signature, sizeof(signature)) != sizeof(signature))
        return ((void*)0);
    if (memcmp(signature, "Rar!\x1A\x07\x00", sizeof(signature)) != 0) {
        if (memcmp(signature, "Rar!\x1A\x07\x01", sizeof(signature)) == 0)
            warn("RAR 5 format isn't supported");
        else if (memcmp(signature, "RE~^", 4) == 0)
            warn("Ancient RAR format isn't supported");
        else if (memcmp(signature, "MZ", 2) == 0 || memcmp(signature, "\x7F\x45LF", 4) == 0)
            warn("SFX archives aren't supported");
        return ((void*)0);
    }

    return ar_open_archive(stream, sizeof(ar_archive_rar), rar_close, rar_parse_entry, rar_get_name, rar_uncompress, ((void*)0), FILE_SIGNATURE_SIZE);
}
