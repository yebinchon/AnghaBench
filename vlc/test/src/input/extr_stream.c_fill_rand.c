
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;


 size_t __MIN (size_t,int) ;
 int assert (int) ;
 int vlc_rand_bytes (int *,size_t) ;
 scalar_t__ write (int,int *,size_t) ;

__attribute__((used)) static void
fill_rand( int i_fd, size_t i_size )
{
    uint8_t p_buf[4096];
    size_t i_written = 0;
    while( i_written < i_size )
    {
        size_t i_tocopy = __MIN( i_size - i_written, 4096 );

        vlc_rand_bytes(p_buf, i_tocopy);
        ssize_t i_ret = write( i_fd, p_buf, i_tocopy );
        assert( i_ret > 0 );
        i_written += i_ret;
    }
    assert( i_written == i_size );
}
