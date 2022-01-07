
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vlc_mouse_t ;
struct TYPE_18__ {scalar_t__ i_cat; } ;
struct TYPE_15__ {int * sub; TYPE_3__* sys; int * video; } ;
struct TYPE_16__ {char const* psz_name; TYPE_4__ fmt_in; TYPE_4__ fmt_out; int * p_module; TYPE_1__ owner; int * p_cfg; scalar_t__ b_allow_fmt_out_change; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_17__ {int obj; TYPE_5__* last; TYPE_5__* first; scalar_t__ b_allow_fmt_out_change; TYPE_4__ fmt_out; TYPE_4__ fmt_in; } ;
typedef TYPE_3__ filter_chain_t ;
typedef TYPE_4__ es_format_t ;
typedef int config_chain_t ;
struct TYPE_19__ {int * pending; int * mouse; struct TYPE_19__* next; struct TYPE_19__* prev; TYPE_2__ filter; } ;
typedef TYPE_5__ chained_filter_t ;


 scalar_t__ VIDEO_ES ;
 int assert (int ) ;
 int es_format_Clean (TYPE_4__*) ;
 int es_format_Copy (TYPE_4__*,TYPE_4__ const*) ;
 int filter_chain_video_cbs ;
 scalar_t__ likely (int ) ;
 int * malloc (int) ;
 char const* module_get_name (int *,int) ;
 void* module_need (TYPE_2__*,char const*,char const*,int) ;
 int msg_Dbg (int ,char*,char const*,void*) ;
 int msg_Err (int ,char*,char const*,...) ;
 int sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_5__* vlc_custom_create (int ,int,char*) ;
 int vlc_mouse_Init (int *) ;
 int vlc_object_delete (TYPE_2__*) ;

__attribute__((used)) static filter_t *filter_chain_AppendInner( filter_chain_t *chain,
    const char *name, const char *capability, config_chain_t *cfg,
    const es_format_t *fmt_out )
{
    chained_filter_t *chained =
        vlc_custom_create( chain->obj, sizeof(*chained), "filter" );
    if( unlikely(chained == ((void*)0)) )
        return ((void*)0);

    filter_t *filter = &chained->filter;

    const es_format_t *fmt_in;
    if( chain->last != ((void*)0) )
        fmt_in = &chain->last->filter.fmt_out;
    else
        fmt_in = &chain->fmt_in;

    if( fmt_out == ((void*)0) )
        fmt_out = &chain->fmt_out;

    es_format_Copy( &filter->fmt_in, fmt_in );
    es_format_Copy( &filter->fmt_out, fmt_out );
    filter->b_allow_fmt_out_change = chain->b_allow_fmt_out_change;
    filter->p_cfg = cfg;
    filter->psz_name = name;

    if (fmt_in->i_cat == VIDEO_ES)
    {
        filter->owner.video = &filter_chain_video_cbs;
        filter->owner.sys = chain;
    }
    else
        filter->owner.sub = ((void*)0);

    assert( capability != ((void*)0) );
    if( name != ((void*)0) && chain->b_allow_fmt_out_change )
    {



        char name_chained[strlen(name) + sizeof(",chain")];
        sprintf( name_chained, "%s,chain", name );
        filter->p_module = module_need( filter, capability, name_chained, 1 );
    }
    else
        filter->p_module = module_need( filter, capability, name, name != ((void*)0) );

    if( filter->p_module == ((void*)0) )
        goto error;

    if( chain->last == ((void*)0) )
    {
        assert( chain->first == ((void*)0) );
        chain->first = chained;
    }
    else
        chain->last->next = chained;
    chained->prev = chain->last;
    chain->last = chained;
    chained->next = ((void*)0);

    vlc_mouse_t *mouse = malloc( sizeof(*mouse) );
    if( likely(mouse != ((void*)0)) )
        vlc_mouse_Init( mouse );
    chained->mouse = mouse;
    chained->pending = ((void*)0);

    msg_Dbg( chain->obj, "Filter '%s' (%p) appended to chain",
             (name != ((void*)0)) ? name : module_get_name(filter->p_module, 0),
             (void *)filter );
    return filter;

error:
    if( name != ((void*)0) )
        msg_Err( chain->obj, "Failed to create %s '%s'", capability, name );
    else
        msg_Err( chain->obj, "Failed to create %s", capability );
    es_format_Clean( &filter->fmt_out );
    es_format_Clean( &filter->fmt_in );
    vlc_object_delete(filter);
    return ((void*)0);
}
