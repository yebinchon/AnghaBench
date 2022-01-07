
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_refcount; int * p_input_item; int event_manager; int * p_subitems; int state; int subitems_lock; int parsed_lock; int parsed_cond; int * p_libvlc_instance; } ;
typedef TYPE_1__ libvlc_media_t ;
typedef int libvlc_instance_t ;
typedef int input_item_t ;


 TYPE_1__* calloc (int,int) ;
 int input_item_Hold (int *) ;
 int install_input_item_observer (TYPE_1__*) ;
 int libvlc_NothingSpecial ;
 int libvlc_event_manager_init (int *,TYPE_1__*) ;
 int libvlc_printerr (char*) ;
 int libvlc_retain (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

libvlc_media_t * libvlc_media_new_from_input_item(
                                   libvlc_instance_t *p_instance,
                                   input_item_t *p_input_item )
{
    libvlc_media_t * p_md;

    if (!p_input_item)
    {
        libvlc_printerr( "No input item given" );
        return ((void*)0);
    }

    p_md = calloc( 1, sizeof(libvlc_media_t) );
    if( !p_md )
    {
        libvlc_printerr( "Not enough memory" );
        return ((void*)0);
    }

    p_md->p_libvlc_instance = p_instance;
    p_md->p_input_item = p_input_item;
    p_md->i_refcount = 1;

    vlc_cond_init(&p_md->parsed_cond);
    vlc_mutex_init(&p_md->parsed_lock);
    vlc_mutex_init(&p_md->subitems_lock);

    p_md->state = libvlc_NothingSpecial;



    p_md->p_subitems = ((void*)0);

    libvlc_event_manager_init( &p_md->event_manager, p_md );

    input_item_Hold( p_md->p_input_item );

    install_input_item_observer( p_md );

    libvlc_retain( p_instance );
    return p_md;
}
