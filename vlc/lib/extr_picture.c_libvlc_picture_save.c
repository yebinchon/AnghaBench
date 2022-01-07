
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* converted; } ;
typedef TYPE_2__ libvlc_picture_t ;
struct TYPE_4__ {int i_buffer; int p_buffer; } ;
typedef int FILE ;


 int fclose (int *) ;
 size_t fwrite (int ,int ,int,int *) ;
 int * vlc_fopen (char const*,char*) ;

int libvlc_picture_save( const libvlc_picture_t* pic, const char* path )
{
    FILE* file = vlc_fopen( path, "wb" );
    if ( !file )
        return -1;
    size_t res = fwrite( pic->converted->p_buffer,
                         pic->converted->i_buffer, 1, file );
    fclose( file );
    return res == 1 ? 0 : -1;
}
