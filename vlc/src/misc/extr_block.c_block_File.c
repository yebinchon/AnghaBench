
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int ssize_t ;
struct TYPE_7__ {scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int EISDIR ;
 int ENOMEM ;
 int ESPIPE ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ SIZE_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int S_TYPEISSHM (struct stat*) ;
 TYPE_1__* block_Alloc (size_t) ;
 int block_Release (TYPE_1__*) ;
 int block_cleanup_push (TYPE_1__*) ;
 TYPE_1__* block_mmap_Alloc (void*,size_t) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int pread (int,scalar_t__,size_t,size_t) ;
 int vlc_cleanup_pop () ;

block_t *block_File(int fd, bool write)
{
    size_t length;
    struct stat st;


    if (fstat (fd, &st))
        return ((void*)0);







    if (S_ISDIR (st.st_mode))
    {
        errno = EISDIR;
        return ((void*)0);
    }
    if (!S_ISREG (st.st_mode) && !(0))
    {
        errno = ESPIPE;
        return ((void*)0);
    }


    if ((uintmax_t)st.st_size >= SIZE_MAX)
    {
        errno = ENOMEM;
        return ((void*)0);
    }
    length = (size_t)st.st_size;
    (void) write;



    block_t *block = block_Alloc (length);
    if (block == ((void*)0))
        return ((void*)0);
    block_cleanup_push (block);

    for (size_t i = 0; i < length;)
    {
        ssize_t len = pread (fd, block->p_buffer + i, length - i, i);
        if (len == -1)
        {
            block_Release (block);
            block = ((void*)0);
            break;
        }
        i += len;
    }
    vlc_cleanup_pop ();
    return block;
}
