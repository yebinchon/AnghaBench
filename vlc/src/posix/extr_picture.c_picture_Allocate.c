
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ ftruncate (int,size_t) ;
 void* mmap (int *,size_t,int,int ,int,int ) ;
 int vlc_close (int) ;
 int vlc_memfd () ;

void *picture_Allocate(int *restrict fdp, size_t size)
{
    int fd = vlc_memfd();
    if (fd == -1)
        return ((void*)0);

    if (ftruncate(fd, size)) {
error:
        vlc_close(fd);
        return ((void*)0);
    }

    void *base = mmap(((void*)0), size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (base == MAP_FAILED)
        goto error;

    *fdp = fd;
    return base;
}
