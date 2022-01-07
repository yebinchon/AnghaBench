
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t comment_size; int comment_offset; } ;
typedef TYPE_1__ ar_archive_zip ;
struct TYPE_5__ {int stream; } ;
typedef TYPE_2__ ar_archive ;


 int SEEK_SET ;
 size_t ar_read (int ,void*,size_t) ;
 int ar_seek (int ,int ,int ) ;

size_t zip_get_global_comment(ar_archive *ar, void *buffer, size_t count)
{
    ar_archive_zip *zip = (ar_archive_zip *)ar;
    if (!zip->comment_size)
        return 0;
    if (!buffer)
        return zip->comment_size;
    if (!ar_seek(ar->stream, zip->comment_offset, SEEK_SET))
        return 0;
    if (count > zip->comment_size)
        count = zip->comment_size;
    return ar_read(ar->stream, buffer, count);
}
