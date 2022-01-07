
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* sys; } ;
struct TYPE_14__ {TYPE_1__ owner; } ;
typedef TYPE_2__ services_discovery_t ;
typedef int libvlc_media_t ;
struct TYPE_15__ {int b_read_only; } ;
typedef TYPE_3__ libvlc_media_list_t ;
struct TYPE_16__ {TYPE_3__* p_mlist; int catname_to_submedialist; int p_libvlc_instance; } ;
typedef TYPE_4__ libvlc_media_discoverer_t ;
typedef int input_item_t ;


 TYPE_3__* kVLCDictionaryNotFound ;
 int libvlc_media_list_internal_add_media (TYPE_3__*,int *) ;
 int libvlc_media_list_lock (TYPE_3__*) ;
 int libvlc_media_list_unlock (TYPE_3__*) ;
 int * libvlc_media_new_as_node (int ,char const*) ;
 int * libvlc_media_new_from_input_item (int ,int *) ;
 int libvlc_media_release (int *) ;
 TYPE_3__* libvlc_media_subitems (int *) ;
 int vlc_dictionary_insert (int *,char const*,TYPE_3__*) ;
 TYPE_3__* vlc_dictionary_value_for_key (int *,char const*) ;

__attribute__((used)) static void services_discovery_item_added( services_discovery_t *sd,
                                           input_item_t *parent,
                                           input_item_t *p_item,
                                           const char *psz_cat )
{
    libvlc_media_t * p_md;
    libvlc_media_discoverer_t *p_mdis = sd->owner.sys;
    libvlc_media_list_t * p_mlist = p_mdis->p_mlist;

    p_md = libvlc_media_new_from_input_item( p_mdis->p_libvlc_instance,
                                             p_item );

    if( parent != ((void*)0) )
    {

    }
    else


    if( psz_cat )
    {
        p_mlist = vlc_dictionary_value_for_key( &p_mdis->catname_to_submedialist, psz_cat );

        if( p_mlist == kVLCDictionaryNotFound )
        {
            libvlc_media_t * p_catmd;
            p_catmd = libvlc_media_new_as_node( p_mdis->p_libvlc_instance, psz_cat );
            p_mlist = libvlc_media_subitems( p_catmd );
            p_mlist->b_read_only = 1;


            vlc_dictionary_insert( &p_mdis->catname_to_submedialist, psz_cat, p_mlist );


            libvlc_media_list_lock( p_mdis->p_mlist );
            libvlc_media_list_internal_add_media( p_mdis->p_mlist, p_catmd );
            libvlc_media_list_unlock( p_mdis->p_mlist );



            libvlc_media_release( p_catmd );
        }
    }

    libvlc_media_list_lock( p_mlist );
    libvlc_media_list_internal_add_media( p_mlist, p_md );
    libvlc_media_list_unlock( p_mlist );

    libvlc_media_release( p_md );
}
