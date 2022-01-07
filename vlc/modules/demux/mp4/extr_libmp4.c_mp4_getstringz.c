
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int SSIZE_MAX ;
 int assert (int) ;
 scalar_t__ likely (int ) ;
 char* malloc (size_t) ;
 int memcpy (char*,int *,size_t) ;
 size_t strnlen (char const*,int) ;

__attribute__((used)) static char *mp4_getstringz( uint8_t **restrict in, uint64_t *restrict size )
{
    assert( *size <= SSIZE_MAX );

    if( *size == 0 )
        return ((void*)0);

    if( *in == 0 )
    {
        *in += 1;
        *size -= 1;
        return ((void*)0);
    }

    size_t len = strnlen( (const char *)*in, *size );
    if( len == 0 || len >= *size )
        return ((void*)0);

    len++;

    char *ret = malloc( len );
    if( likely(ret != ((void*)0)) )
        memcpy( ret, *in, len );
    *in += len;
    *size -= len;
    return ret;
}
