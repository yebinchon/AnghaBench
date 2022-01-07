
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ p_media_library; scalar_t__ main_playlist; int * parser; scalar_t__ p_vlm; scalar_t__ media_source_provider; scalar_t__ p_thumbnailer; } ;
typedef TYPE_2__ libvlc_priv_t ;
struct TYPE_16__ {int logger; } ;
struct TYPE_18__ {TYPE_1__ obj; } ;
typedef TYPE_3__ libvlc_int_t ;


 int VLC_OBJECT (TYPE_3__*) ;
 int config_AutoSaveConfigFile (int ) ;
 int errno ;
 int free (char*) ;
 int input_preparser_Deactivate (int *) ;
 int input_preparser_Delete (int *) ;
 int intf_DestroyAll (TYPE_3__*) ;
 int libvlc_InternalActionsClean (TYPE_3__*) ;
 int libvlc_InternalDialogClean (TYPE_3__*) ;
 int libvlc_InternalKeystoreClean (TYPE_3__*) ;
 int libvlc_MlRelease (scalar_t__) ;
 TYPE_2__* libvlc_priv (TYPE_3__*) ;
 int module_EndBank (int) ;
 int msg_Dbg (TYPE_3__*,char*,...) ;
 int msg_Warn (TYPE_3__*,char*,char*,int ) ;
 int system_End () ;
 scalar_t__ unlink (char*) ;
 int var_InheritBool (TYPE_3__*,char*) ;
 char* var_InheritString (TYPE_3__*,char*) ;
 int vlc_LogDestroy (int ) ;
 int vlc_media_source_provider_Delete (scalar_t__) ;
 int vlc_playlist_Delete (scalar_t__) ;
 int vlc_strerror_c (int ) ;
 int vlc_thumbnailer_Release (scalar_t__) ;
 int vlm_Delete (scalar_t__) ;

void libvlc_InternalCleanup( libvlc_int_t *p_libvlc )
{
    libvlc_priv_t *priv = libvlc_priv (p_libvlc);

    if (priv->parser != ((void*)0))
        input_preparser_Deactivate(priv->parser);


    msg_Dbg( p_libvlc, "removing all interfaces" );
    intf_DestroyAll( p_libvlc );

    if ( priv->p_thumbnailer )
        vlc_thumbnailer_Release( priv->p_thumbnailer );

    if( priv->media_source_provider )
        vlc_media_source_provider_Delete( priv->media_source_provider );

    libvlc_InternalDialogClean( p_libvlc );
    libvlc_InternalKeystoreClean( p_libvlc );
    char *pidfile = var_InheritString( p_libvlc, "pidfile" );
    if( pidfile != ((void*)0) )
    {
        msg_Dbg( p_libvlc, "removing PID file %s", pidfile );
        if( unlink( pidfile ) )
            msg_Warn( p_libvlc, "cannot remove PID file %s: %s",
                      pidfile, vlc_strerror_c(errno) );
        free( pidfile );
    }


    if (priv->parser != ((void*)0))
        input_preparser_Delete(priv->parser);

    if (priv->main_playlist)
        vlc_playlist_Delete(priv->main_playlist);

    if ( priv->p_media_library )
        libvlc_MlRelease( priv->p_media_library );

    libvlc_InternalActionsClean( p_libvlc );


    if( !var_InheritBool( p_libvlc, "ignore-config" ) )
        config_AutoSaveConfigFile( VLC_OBJECT(p_libvlc) );

    vlc_LogDestroy(p_libvlc->obj.logger);

    module_EndBank (1);



}
