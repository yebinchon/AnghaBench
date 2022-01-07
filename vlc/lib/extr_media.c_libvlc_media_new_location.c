
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_instance_t ;
typedef int input_item_t ;


 int * input_item_New (char const*,int *) ;
 int input_item_Release (int *) ;
 int * libvlc_media_new_from_input_item (int *,int *) ;
 int libvlc_printerr (char*) ;

libvlc_media_t *libvlc_media_new_location( libvlc_instance_t *p_instance,
                                           const char * psz_mrl )
{
    input_item_t * p_input_item;
    libvlc_media_t * p_md;

    p_input_item = input_item_New( psz_mrl, ((void*)0) );

    if (!p_input_item)
    {
        libvlc_printerr( "Not enough memory" );
        return ((void*)0);
    }

    p_md = libvlc_media_new_from_input_item( p_instance, p_input_item );


    input_item_Release( p_input_item );

    return p_md;
}
