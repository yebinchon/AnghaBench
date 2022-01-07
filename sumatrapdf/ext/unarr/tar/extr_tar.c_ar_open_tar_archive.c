
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ar_stream ;
struct TYPE_4__ {int checksum; } ;
struct TYPE_5__ {TYPE_1__ entry; } ;
typedef TYPE_2__ ar_archive_tar ;
typedef int ar_archive ;


 int SEEK_SET ;
 int * ar_open_archive (int *,int,int ,int ,int ,int ,int *,int ) ;
 int ar_seek (int *,int ,int ) ;
 int free (int *) ;
 int tar_close ;
 int tar_get_name ;
 int tar_parse_entry ;
 int tar_parse_header (TYPE_2__*) ;
 int tar_uncompress ;

ar_archive *ar_open_tar_archive(ar_stream *stream)
{
    ar_archive *ar;
    ar_archive_tar *tar;

    if (!ar_seek(stream, 0, SEEK_SET))
        return ((void*)0);

    ar = ar_open_archive(stream, sizeof(ar_archive_tar), tar_close, tar_parse_entry, tar_get_name, tar_uncompress, ((void*)0), 0);
    if (!ar)
        return ((void*)0);

    tar = (ar_archive_tar *)ar;
    if (!tar_parse_header(tar) || !tar->entry.checksum) {
        free(ar);
        return ((void*)0);
    }

    return ar;
}
