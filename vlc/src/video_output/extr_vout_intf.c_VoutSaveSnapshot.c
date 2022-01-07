
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {char* path; char* format; char* prefix_fmt; scalar_t__ is_sequential; int sequence; } ;
typedef TYPE_1__ vout_snapshot_save_cfg_t ;
typedef int picture_t ;
typedef int cfg ;
typedef int block_t ;


 int VLC_TICK_FROM_MS (int) ;
 int VoutOsdSnapshot (int *,int *,char*) ;
 int block_Release (int *) ;
 int free (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int msg_Err (int *,char*) ;
 int picture_Release (int *) ;
 int var_GetInteger (int *,char*) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int var_SetInteger (int *,char*,int) ;
 int var_SetString (int ,char*,char*) ;
 int vlc_object_instance (int *) ;
 scalar_t__ vout_GetSnapshot (int *,int **,int **,int *,char*,int ) ;
 char* vout_snapshot_GetDirectory () ;
 scalar_t__ vout_snapshot_SaveImage (char**,int*,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void VoutSaveSnapshot( vout_thread_t *p_vout )
{
    char *psz_path = var_InheritString( p_vout, "snapshot-path" );
    char *psz_format = var_InheritString( p_vout, "snapshot-format" );
    char *psz_prefix = var_InheritString( p_vout, "snapshot-prefix" );


    picture_t *p_picture;
    block_t *p_image;



    if( vout_GetSnapshot( p_vout, &p_image, &p_picture, ((void*)0), psz_format, VLC_TICK_FROM_MS(500) ) )
    {
        p_picture = ((void*)0);
        p_image = ((void*)0);
        goto exit;
    }

    if( !psz_path )
    {
        psz_path = vout_snapshot_GetDirectory();
        if( !psz_path )
        {
            msg_Err( p_vout, "no path specified for snapshots" );
            goto exit;
        }
    }

    vout_snapshot_save_cfg_t cfg;
    memset( &cfg, 0, sizeof(cfg) );
    cfg.is_sequential = var_InheritBool( p_vout, "snapshot-sequential" );
    cfg.sequence = var_GetInteger( p_vout, "snapshot-num" );
    cfg.path = psz_path;
    cfg.format = psz_format;
    cfg.prefix_fmt = psz_prefix;

    char *psz_filename;
    int i_sequence;
    if (vout_snapshot_SaveImage( &psz_filename, &i_sequence,
                                 p_image, p_vout, &cfg ) )
        goto exit;
    if( cfg.is_sequential )
        var_SetInteger( p_vout, "snapshot-num", i_sequence + 1 );

    VoutOsdSnapshot( p_vout, p_picture, psz_filename );


    var_SetString( vlc_object_instance(p_vout), "snapshot-file", psz_filename );

    free( psz_filename );

exit:
    if( p_image )
        block_Release( p_image );
    if( p_picture )
        picture_Release( p_picture );
    free( psz_prefix );
    free( psz_format );
    free( psz_path );
}
