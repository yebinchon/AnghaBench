
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int description; TYPE_3__* p_sys; } ;
typedef TYPE_1__ vlc_object_t ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_17__ {int b_update; int b_savedurls_loaded; int lock; int wait; int thread; int update_type; int * psz_request; scalar_t__ i_items; int * pp_items; int * ppsz_urls; scalar_t__ i_urls; } ;
typedef TYPE_3__ services_discovery_sys_t ;


 int Request ;
 int Run ;
 int UPDATE_URLS ;
 int UrlsChange ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_STRING ;
 int _ (char*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 scalar_t__ strcmp (int ,char*) ;
 int var_AddCallback (TYPE_1__*,char*,int ,TYPE_3__*) ;
 int var_Create (TYPE_1__*,char*,int) ;
 int var_DelCallback (TYPE_1__*,char*,int ,TYPE_3__*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 TYPE_1__* vlc_object_parent (TYPE_1__*) ;
 int vlc_object_typename (TYPE_1__*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    if( strcmp( vlc_object_typename(vlc_object_parent(p_this)), "playlist" ) )
        return VLC_EGENERIC;

    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    services_discovery_sys_t *p_sys = malloc( sizeof( *p_sys ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->i_urls = 0;
    p_sys->ppsz_urls = ((void*)0);
    p_sys->pp_items = ((void*)0);
    p_sys->i_items = 0;
    vlc_mutex_init( &p_sys->lock );
    vlc_cond_init( &p_sys->wait );
    p_sys->b_update = 1;
    p_sys->b_savedurls_loaded = 0;
    p_sys->psz_request = ((void*)0);
    p_sys->update_type = UPDATE_URLS;

    p_sd->p_sys = p_sys;
    p_sd->description = _("Podcasts");


    vlc_object_t *pl = vlc_object_parent(p_sd);
    var_Create( pl, "podcast-urls", VLC_VAR_STRING | VLC_VAR_DOINHERIT );
    var_AddCallback( pl, "podcast-urls", UrlsChange, p_sys );

    var_Create( pl, "podcast-request", VLC_VAR_STRING );
    var_AddCallback( pl, "podcast-request", Request, p_sys );

    if (vlc_clone (&p_sys->thread, Run, p_sd, VLC_THREAD_PRIORITY_LOW))
    {
        var_DelCallback( pl, "podcast-request", Request, p_sys );
        var_DelCallback( pl, "podcast-urls", UrlsChange, p_sys );
        vlc_cond_destroy( &p_sys->wait );
        vlc_mutex_destroy( &p_sys->lock );
        free (p_sys);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
