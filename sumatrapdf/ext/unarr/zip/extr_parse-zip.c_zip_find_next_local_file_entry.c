
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int off64_t ;
typedef int data ;
typedef int ar_stream ;


 int SEEK_SET ;
 scalar_t__ SIG_LOCAL_FILE_HEADER ;
 int ZIP_LOCAL_ENTRY_FIXED_SIZE ;
 scalar_t__ ar_read (int *,int *,int) ;
 int ar_seek (int *,int,int ) ;
 int memmove (int *,int *,int) ;
 scalar_t__ uint32le (int *) ;

off64_t zip_find_next_local_file_entry(ar_stream *stream, off64_t offset)
{
    uint8_t data[512];
    int count, i;

    if (!ar_seek(stream, offset, SEEK_SET))
        return -1;
    count = (int)ar_read(stream, data, sizeof(data));

    while (count >= ZIP_LOCAL_ENTRY_FIXED_SIZE) {
        for (i = 0; i < count - 4; i++) {
            if (uint32le(data + i) == SIG_LOCAL_FILE_HEADER)
                return offset + i;
        }
        memmove(data, data + count - 4, count);
        offset += count - 4;
        count = (int)ar_read(stream, data + 4, sizeof(data) - 4) + 4;
    }

    return -1;
}
