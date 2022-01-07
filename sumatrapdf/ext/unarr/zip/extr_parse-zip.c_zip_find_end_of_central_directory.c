
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int off64_t ;
typedef int data ;
typedef int ar_stream ;


 int SEEK_END ;
 scalar_t__ SIG_END_OF_CENTRAL_DIRECTORY ;
 int UINT16_MAX ;
 int ZIP_END_OF_CENTRAL_DIR_SIZE ;
 size_t ar_read (int *,int *,int) ;
 int ar_seek (int *,int,int ) ;
 int ar_tell (int *) ;
 scalar_t__ uint32le (int *) ;

off64_t zip_find_end_of_central_directory(ar_stream *stream)
{
    uint8_t data[512];
    off64_t filesize;
    int fromend = 0;
    int count, i;

    if (!ar_seek(stream, 0, SEEK_END))
        return -1;
    filesize = ar_tell(stream);

    while (fromend < UINT16_MAX + ZIP_END_OF_CENTRAL_DIR_SIZE && fromend < filesize) {
        count = (int)(filesize - fromend < sizeof(data) ? filesize - fromend : sizeof(data));
        fromend += count;
        if (count < ZIP_END_OF_CENTRAL_DIR_SIZE)
            return -1;
        if (!ar_seek(stream, -fromend, SEEK_END))
            return -1;
        if (ar_read(stream, data, count) != (size_t)count)
            return -1;
        for (i = count - ZIP_END_OF_CENTRAL_DIR_SIZE; i >= 0; i--) {
            if (uint32le(data + i) == SIG_END_OF_CENTRAL_DIRECTORY)
                return filesize - fromend + i;
        }
        fromend -= ZIP_END_OF_CENTRAL_DIR_SIZE - 1;
    }

    return -1;
}
