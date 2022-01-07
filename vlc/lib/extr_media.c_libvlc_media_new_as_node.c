
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_instance_t ;
typedef int input_item_t ;


 int INPUT_ITEM_URI_NOP ;
 int * input_item_New (int ,char const*) ;
 int input_item_Release (int *) ;
 int * libvlc_media_new_from_input_item (int *,int *) ;
 int libvlc_media_release (int *) ;
 int libvlc_printerr (char*) ;
 int * media_get_subitems (int *,int) ;

libvlc_media_t * libvlc_media_new_as_node( libvlc_instance_t *p_instance,
                                           const char * psz_name )
{
    input_item_t * p_input_item;
    libvlc_media_t * p_md;
    libvlc_media_list_t * p_subitems;

    p_input_item = input_item_New( INPUT_ITEM_URI_NOP, psz_name );

    if (!p_input_item)
    {
        libvlc_printerr( "Not enough memory" );
        return ((void*)0);
    }

    p_md = libvlc_media_new_from_input_item( p_instance, p_input_item );
    input_item_Release( p_input_item );

    p_subitems = media_get_subitems( p_md, 1 );
    if( p_subitems == ((void*)0)) {
        libvlc_media_release( p_md );
        return ((void*)0);
    }

    return p_md;
}
