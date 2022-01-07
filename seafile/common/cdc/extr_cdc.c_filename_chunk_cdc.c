
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int SeafileCrypt ;
typedef int CDCFileDescriptor ;


 int O_BINARY ;
 int O_RDONLY ;
 int close (int) ;
 int file_chunk_cdc (int,int *,int *,int ) ;
 int seaf_util_open (char const*,int) ;
 int seaf_warning (char*,char const*) ;

int filename_chunk_cdc(const char *filename,
                       CDCFileDescriptor *file_descr,
                       SeafileCrypt *crypt,
                       gboolean write_data)
{
    int fd_src = seaf_util_open (filename, O_RDONLY | O_BINARY);
    if (fd_src < 0) {
        seaf_warning ("CDC: failed to open %s.\n", filename);
        return -1;
    }

    int ret = file_chunk_cdc (fd_src, file_descr, crypt, write_data);
    close (fd_src);
    return ret;
}
