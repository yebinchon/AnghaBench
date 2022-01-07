
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_input_item; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int b_error; int * f; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int FILE ;


 int INPUT_RECORD_PREFIX ;
 int VLC_DOWNLOAD_DIR ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 char* config_GetUserDir (int ) ;
 int free (char*) ;
 char* input_item_CreateFilename (int ,char*,int ,char const*) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 char* var_CreateGetNonEmptyString (TYPE_1__*,char*) ;
 int var_SetString (int ,char*,char*) ;
 int * vlc_fopen (char*,char*) ;
 int vlc_object_instance (TYPE_1__*) ;

__attribute__((used)) static int Start( stream_t *s, const char *psz_extension )
{
    stream_sys_t *p_sys = s->p_sys;

    char *psz_file;
    FILE *f;


    if( !psz_extension )
        psz_extension = "dat";


    char *psz_path = var_CreateGetNonEmptyString( s, "input-record-path" );
    if( !psz_path )
        psz_path = config_GetUserDir( VLC_DOWNLOAD_DIR );

    if( !psz_path )
        return VLC_ENOMEM;



    psz_file = input_item_CreateFilename( s->p_input_item, psz_path,
                                          INPUT_RECORD_PREFIX, psz_extension );

    free( psz_path );

    if( !psz_file )
        return VLC_ENOMEM;

    f = vlc_fopen( psz_file, "wb" );
    if( !f )
    {
        free( psz_file );
        return VLC_EGENERIC;
    }


    var_SetString( vlc_object_instance(s), "record-file", psz_file );

    msg_Dbg( s, "Recording into %s", psz_file );
    free( psz_file );


    p_sys->f = f;
    p_sys->b_error = 0;
    return VLC_SUCCESS;
}
