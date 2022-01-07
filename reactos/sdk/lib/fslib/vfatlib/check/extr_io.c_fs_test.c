
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 void* alloc (size_t const) ;
 int fd ;
 int free (void*) ;
 int lseek (int ,int const,int ) ;
 int pdie (char*,long long) ;
 int read (int ,void*,size_t const) ;

int fs_test(off_t pos, int size)
{
    void *scratch;
    int okay;
    if (lseek(fd, pos, 0) != pos)
 pdie("Seek to %lld", (long long)pos);
    scratch = alloc(size);
    okay = read(fd, scratch, size) == size;
    free(scratch);

    return okay;
}
