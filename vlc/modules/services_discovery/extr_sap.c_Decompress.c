
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int avail_in; int avail_out; int total_out; int * next_out; int * next_in; } ;
typedef TYPE_1__ z_stream ;
typedef int d_stream ;
typedef int Bytef ;


 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int free (unsigned char*) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 unsigned char* xrealloc (unsigned char*,int) ;

__attribute__((used)) static int Decompress( const unsigned char *psz_src, unsigned char **_dst, int i_len )
{
    (void)psz_src;
    (void)_dst;
    (void)i_len;
    return -1;

}
