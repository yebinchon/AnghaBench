
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct zip_eocd64 {scalar_t__ numentries; int dir_offset; } ;
typedef int off64_t ;
typedef int data ;
typedef int ar_stream ;


 int SEEK_SET ;
 scalar_t__ SIG_CENTRAL_DIRECTORY ;
 int ZIP_DIR_ENTRY_FIXED_SIZE ;
 int ar_read (int *,int *,int) ;
 int ar_seek (int *,int ,int ) ;
 int ar_skip (int *,scalar_t__) ;
 int ar_tell (int *) ;
 scalar_t__ uint16le (int *) ;
 scalar_t__ uint32le (int *) ;

off64_t zip_find_end_of_last_directory_entry(ar_stream *stream, struct zip_eocd64 *eocd)
{
    uint8_t data[ZIP_DIR_ENTRY_FIXED_SIZE];
    uint64_t i;

    if (!ar_seek(stream, eocd->dir_offset, SEEK_SET))
        return -1;
    for (i = 0; i < eocd->numentries; i++) {
        if (ar_read(stream, data, sizeof(data)) != sizeof(data))
            return -1;
        if (uint32le(data + 0) != SIG_CENTRAL_DIRECTORY)
            return -1;
        if (!ar_skip(stream, uint16le(data + 28) + uint16le(data + 30) + uint16le(data + 32)))
            return -1;
    }

    return ar_tell(stream);
}
