
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int SEEK_SET ;
 int TRUE ;
 int err (char*) ;
 int ferr (char*) ;
 scalar_t__ lseek (int,unsigned long,int ) ;
 scalar_t__ read (int,unsigned char*,unsigned long) ;

__attribute__((used)) static int truncatezeros(int fd, unsigned long *newsize)
{
    unsigned char contents[1024];
    unsigned long size, n;

    size = *newsize;
    do {
        n = sizeof contents;
        if (n > size)
            n = size;
        if (lseek(fd, size - n, SEEK_SET) == (off_t)-1)
            return ferr("cannot seek in file.");
        if (read(fd, contents, n) != (ssize_t)n)
            return ferr("cannot read file contents");
        while (n && !contents[--n])
            --size;
    } while (size && !n);



    if (!size)
        return err("ELF file is completely blank!");

    *newsize = size;
    return TRUE;
}
