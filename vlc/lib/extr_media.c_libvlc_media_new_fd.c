
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrl ;
typedef int libvlc_media_t ;
typedef int libvlc_instance_t ;


 int * libvlc_media_new_location (int *,char*) ;
 int snprintf (char*,int,char*,int) ;

libvlc_media_t *libvlc_media_new_fd( libvlc_instance_t *p_instance, int fd )
{
    char mrl[16];
    snprintf( mrl, sizeof(mrl), "fd://%d", fd );

    return libvlc_media_new_location( p_instance, mrl );
}
