
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct stat {int st_size; } ;
struct TYPE_2__ {int f; } ;
struct reader {TYPE_1__ u; } ;


 int assert (int) ;
 int fileno (int ) ;
 int fstat (int,struct stat*) ;

__attribute__((used)) static uint64_t
libc_getsize( struct reader *p_reader )
{
    struct stat st;
    int i_fd = fileno( p_reader->u.f );

    assert( i_fd >= 0 );
    assert( fstat( i_fd, &st ) != -1 );

    return st.st_size;
}
