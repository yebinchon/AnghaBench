
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;


 int O_RDONLY ;
 int * block_File (int,int) ;
 int vlc_close (int) ;
 int vlc_open (char const*,int ) ;

block_t *block_FilePath(const char *path, bool write)
{


    int fd = vlc_open (path, O_RDONLY);
    if (fd == -1)
        return ((void*)0);

    block_t *block = block_File(fd, write);
    vlc_close (fd);
    return block;
}
