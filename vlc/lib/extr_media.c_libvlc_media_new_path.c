
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_instance_t ;


 int errno ;
 int free (char*) ;
 int * libvlc_media_new_location (int *,char*) ;
 int libvlc_printerr (char*,int ) ;
 scalar_t__ unlikely (int ) ;
 char* vlc_path2uri (char const*,int *) ;
 int vlc_strerror_c (int ) ;

libvlc_media_t *libvlc_media_new_path( libvlc_instance_t *p_instance,
                                       const char *path )
{
    char *mrl = vlc_path2uri( path, ((void*)0) );
    if( unlikely(mrl == ((void*)0)) )
    {
        libvlc_printerr( "%s", vlc_strerror_c(errno) );
        return ((void*)0);
    }

    libvlc_media_t *m = libvlc_media_new_location( p_instance, mrl );
    free( mrl );
    return m;
}
