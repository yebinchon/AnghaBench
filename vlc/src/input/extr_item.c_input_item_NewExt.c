
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_event_manager_t ;
struct TYPE_8__ {int i_type; int b_net; int b_error_when_reading; int pp_slaves; int i_slaves; int pp_epg; int i_epg; int * p_meta; int * p_stats; int es; int i_es; int pp_categories; int i_categories; int i_duration; int * opaques; int * optflagv; scalar_t__ optflagc; int ppsz_options; int i_options; int * psz_uri; int * psz_name; int lock; int event_manager; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_9__ {TYPE_1__ item; int rc; } ;
typedef TYPE_2__ input_item_owner_t ;
typedef enum input_item_type_e { ____Placeholder_input_item_type_e } input_item_type_e ;
typedef enum input_item_net_type { ____Placeholder_input_item_net_type } input_item_net_type ;


 int ITEM_NET ;
 int ITEM_NET_UNKNOWN ;
 int ITEM_TYPE_UNKNOWN ;
 int TAB_INIT (int ,int ) ;
 TYPE_2__* calloc (int,int) ;
 int input_item_SetName (TYPE_1__*,char const*) ;
 int input_item_SetURI (TYPE_1__*,char const*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_event_manager_init (int *,TYPE_1__*) ;
 int vlc_mutex_init (int *) ;

input_item_t *
input_item_NewExt( const char *psz_uri, const char *psz_name,
                   vlc_tick_t duration, enum input_item_type_e type, enum input_item_net_type i_net )
{
    input_item_owner_t *owner = calloc( 1, sizeof( *owner ) );
    if( unlikely(owner == ((void*)0)) )
        return ((void*)0);

    vlc_atomic_rc_init( &owner->rc );

    input_item_t *p_input = &owner->item;
    vlc_event_manager_t * p_em = &p_input->event_manager;

    vlc_mutex_init( &p_input->lock );

    p_input->psz_name = ((void*)0);
    if( psz_name )
        input_item_SetName( p_input, psz_name );

    p_input->psz_uri = ((void*)0);
    if( psz_uri )
        input_item_SetURI( p_input, psz_uri );
    else
    {
        p_input->i_type = ITEM_TYPE_UNKNOWN;
        p_input->b_net = 0;
    }

    TAB_INIT( p_input->i_options, p_input->ppsz_options );
    p_input->optflagc = 0;
    p_input->optflagv = ((void*)0);
    p_input->opaques = ((void*)0);

    p_input->i_duration = duration;
    TAB_INIT( p_input->i_categories, p_input->pp_categories );
    TAB_INIT( p_input->i_es, p_input->es );
    p_input->p_stats = ((void*)0);
    p_input->p_meta = ((void*)0);
    TAB_INIT( p_input->i_epg, p_input->pp_epg );
    TAB_INIT( p_input->i_slaves, p_input->pp_slaves );

    vlc_event_manager_init( p_em, p_input );

    if( type != ITEM_TYPE_UNKNOWN )
        p_input->i_type = type;
    p_input->b_error_when_reading = 0;

    if( i_net != ITEM_NET_UNKNOWN )
        p_input->b_net = i_net == ITEM_NET;
    return p_input;
}
