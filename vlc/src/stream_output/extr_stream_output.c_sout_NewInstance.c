
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int b_wants_substreams; int lock; void* psz_sout; int * p_stream; scalar_t__ i_out_pace_nocontrol; } ;
typedef TYPE_1__ sout_instance_t ;


 int FREENULL (void*) ;
 int SOUT_STREAM_WANTS_SUBSTREAMS ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_INTEGER ;
 int assert (int ) ;
 int free (char*) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Err (TYPE_1__*,char*,char*) ;
 int * sout_StreamChainNew (TYPE_1__*,char*,int *,int *) ;
 int sout_StreamControl (int *,int ,int*) ;
 char* sout_stream_url_to_chain (int ,char const*) ;
 void* strdup (char const*) ;
 int var_Create (TYPE_1__*,char*,int) ;
 int var_InheritBool (int *,char*) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_object_delete (TYPE_1__*) ;

sout_instance_t *sout_NewInstance( vlc_object_t *p_parent, const char *psz_dest )
{
    sout_instance_t *p_sout;
    char *psz_chain;

    assert( psz_dest != ((void*)0) );

    if( psz_dest[0] == '#' )
    {
        psz_chain = strdup( &psz_dest[1] );
    }
    else
    {
        psz_chain = sout_stream_url_to_chain(
            var_InheritBool(p_parent, "sout-display"), psz_dest );
    }
    if(!psz_chain)
        return ((void*)0);


    p_sout = vlc_custom_create( p_parent, sizeof( *p_sout ), "stream output" );
    if( p_sout == ((void*)0) )
    {
        free( psz_chain );
        return ((void*)0);
    }

    msg_Dbg( p_sout, "using sout chain=`%s'", psz_chain );


    p_sout->psz_sout = strdup( psz_dest );
    p_sout->i_out_pace_nocontrol = 0;
    p_sout->b_wants_substreams = 0;

    vlc_mutex_init( &p_sout->lock );
    p_sout->p_stream = ((void*)0);

    var_Create( p_sout, "sout-mux-caching", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT );

    p_sout->p_stream = sout_StreamChainNew( p_sout, psz_chain, ((void*)0), ((void*)0) );
    if( p_sout->p_stream )
    {
        free( psz_chain );
        sout_StreamControl( p_sout->p_stream,
                            SOUT_STREAM_WANTS_SUBSTREAMS,
                            &p_sout->b_wants_substreams );
        return p_sout;
    }

    msg_Err( p_sout, "stream chain failed for `%s'", psz_chain );
    free( psz_chain );

    FREENULL( p_sout->psz_sout );

    vlc_mutex_destroy( &p_sout->lock );
    vlc_object_delete(p_sout);
    return ((void*)0);
}
