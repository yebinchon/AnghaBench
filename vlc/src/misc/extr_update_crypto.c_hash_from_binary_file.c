
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int gcry_md_hd_t ;
typedef int buffer ;
typedef int FILE ;


 int fclose (int *) ;
 size_t fread (int *,int,int,int *) ;
 int gcry_md_write (int ,int *,size_t) ;
 int * vlc_fopen (char const*,char*) ;

__attribute__((used)) static int hash_from_binary_file( const char *psz_file, gcry_md_hd_t hd )
{
    uint8_t buffer[4096];
    size_t i_read;

    FILE *f = vlc_fopen( psz_file, "r" );
    if( !f )
        return -1;

    while( ( i_read = fread( buffer, 1, sizeof(buffer), f ) ) > 0 )
        gcry_md_write( hd, buffer, i_read );

    fclose( f );

    return 0;
}
