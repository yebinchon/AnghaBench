
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int munmap (void*,size_t) ;
 int vlc_close (int) ;

void picture_Deallocate(int fd, void *base, size_t size)
{
    munmap(base, size);
    vlc_close(fd);
}
